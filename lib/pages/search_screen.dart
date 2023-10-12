import 'package:anilist_ui/graphql/anilist/schema.graphql.dart';
import 'package:anilist_ui/pages/search_landing_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:anilist_ui/graphql/anilist/search.graphql.dart';
import 'package:pretty_json/pretty_json.dart';

import '../common_widgets/centered_item.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // Filter State
    final searchText = useState<String?>(null);
    final mediaType = useState<Enum$MediaType?>(null);

    // Query State
    final searchEnabled = useState<bool>(false);
    final isLoading = useState<bool>(true);
    final isLoadingMore = useState<bool>(false);
    final hasError = useState<bool>(false);
    final currentPage = useState<int>(1);
    final hasNextpage = useState<bool>(false);
    final mediaList = useState<List<Query$Search$Page$media?>>([]);

    final scrollController = ScrollController();
    final client = useGraphQLClient();

    Options$Query$Search queryOptions({required int page}) {
      var variables = Variables$Query$Search(
        search: searchText.value == null || searchText.value!.isEmpty
            ? null
            : searchText.value,
        perPage: 25,
        page: page,
        type: (mediaType.value == Enum$MediaType.$unknown ||
                mediaType.value == null)
            ? null
            : mediaType.value,
        isAdult: false, // TODO: use user setting
      );

      return Options$Query$Search(
        variables: variables,
      );
    }

    void handleError(dynamic error) {
      hasError.value = true;
      print('Unknown exception occurred: $error');
    }

    useEffect(() {
      if (!searchEnabled.value) return;

      isLoading.value = true;

      client.query$Search(queryOptions(page: 1)).then((result) {
        if (result.hasException) {
          throw result.exception ?? Exception('Empty exception.');
        }
        print('fetching first page');
        var data = result.parsedData?.Page;
        mediaList.value = data?.media ?? [];
        currentPage.value = data?.pageInfo?.currentPage ?? 1;
        hasNextpage.value = data?.pageInfo?.hasNextPage ?? false;
        hasError.value = false;
        isLoading.value = false;
      }).catchError(handleError);
      return null;
    }, [searchText.value, mediaType.value]);

    void fetchPage() {
      isLoadingMore.value = true;

      client
          .query$Search(queryOptions(page: currentPage.value + 1))
          .then((result) {
        if (result.hasException) {
          throw result.exception ?? Exception('Empty exception.');
        }
        print('finished fetching page ${currentPage.value + 1}');
        var data = result.parsedData?.Page;
        var newMedia = data?.media ?? [];

        mediaList.value.addAll(newMedia);
        currentPage.value++;
        hasNextpage.value = data?.pageInfo?.hasNextPage ?? false;
        hasError.value = false;
        isLoadingMore.value = false;
      }).catchError(handleError);
    }

    // When user scrolls to bottom, fetch paginated results
    scrollController.addListener(() async {
      bool scrolledToBottom = scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - 50;

      if (scrolledToBottom &&
          !isLoadingMore.value &&
          hasNextpage.value &&
          searchEnabled.value) {
        fetchPage();
      }
    });

    Widget displayContent() {
      if (hasError.value) {
        return const CenteredItem(
          flex: true,
          item: Text('An error has occured. Please try again.'),
        );
      }

      if (!searchEnabled.value) {
        return const SearchLandingView();
      }

      if (isLoading.value) {
        return const CenteredItem(
          flex: true,
          item: CircularProgressIndicator(),
        );
      }

      return SearchResults(
        mediaList: mediaList,
        scrollController: scrollController,
        isLoadingMore: isLoadingMore,
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchFilters(
              searchText: searchText,
              mediaType: mediaType,
              searchEnabled: searchEnabled,
            ),
            displayContent(),
          ],
        ),
      ),
    );
  }
}

class SearchFilters extends StatelessWidget {
  const SearchFilters({
    super.key,
    required this.searchText,
    required this.mediaType,
    required this.searchEnabled,
  });

  final ValueNotifier<Enum$MediaType?> mediaType;
  final ValueNotifier<String?> searchText;
  final ValueNotifier<bool> searchEnabled;

  String placeholderText() {
    switch (mediaType.value) {
      case (Enum$MediaType.ANIME):
        return 'Search Anime';
      case (Enum$MediaType.MANGA):
        return 'Search Manga';
      default:
        return 'Search Anime and Manga';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        child: SearchBar(
          shape: const MaterialStatePropertyAll(RoundedRectangleBorder()),
          padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 16.0)),
          onSubmitted: (value) {
            searchEnabled.value = true;
            searchText.value = value;
          },
          leading: const Icon(Icons.search),
          hintText: placeholderText(),
          trailing: [
            Tooltip(
              message: 'Filter Search',
              child: PopupMenuButton<Enum$MediaType?>(
                icon: const Icon(Icons.filter_list),
                onSelected: (value) {
                  searchEnabled.value = true;
                  mediaType.value = value ?? Enum$MediaType.$unknown;
                },
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem(
                    value: Enum$MediaType.$unknown,
                    child: Text('All'),
                  ),
                  const PopupMenuItem(
                    value: Enum$MediaType.ANIME,
                    child: Text('Anime'),
                  ),
                  const PopupMenuItem(
                    value: Enum$MediaType.MANGA,
                    child: Text('Manga'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class SearchResults extends HookWidget {
  const SearchResults({
    super.key,
    required this.mediaList,
    required this.scrollController,
    required this.isLoadingMore,
  });

  final ValueNotifier<List<Query$Search$Page$media?>> mediaList;
  final ScrollController scrollController;
  final ValueNotifier<bool> isLoadingMore;

  @override
  Widget build(BuildContext context) {
    if (mediaList.value.isEmpty) {
      return const CenteredItem(item: Text("No results found."), flex: true);
    }

    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 600,
          childAspectRatio: 600 / 200,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
        controller: scrollController,
        itemCount: isLoadingMore.value
            ? mediaList.value.length + 1
            : mediaList.value.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == mediaList.value.length) {
            return const Card(
                child: CenteredItem(item: CircularProgressIndicator()));
          }
          var media = mediaList.value[index];
          return (media != null) ? MediaCard(media: media) : null;
        },
      ),
    );
  }
}

class MediaCard extends StatelessWidget {
  const MediaCard({
    super.key,
    required this.media,
  });

  final Query$Search$Page$media media;

  @override
  Widget build(BuildContext context) {
    String? imageUrl = media.coverImage?.medium;
    var mediaType = media.type ?? Enum$MediaType.$unknown;
    var mediaFormat = media.format ?? Enum$MediaFormat.$unknown;
    var mediaStatus = media.status ?? Enum$MediaStatus.$unknown;

    String getMediaStart(media) {
      var startSeason = media?.season ?? Enum$MediaSeason.$unknown;
      int? startYear = media?.seasonYear ?? media?.startDate?.year;
      String mediaStart =
          '${(startSeason == Enum$MediaSeason.$unknown) ? '' : '${toJson$Enum$MediaSeason(startSeason)} '}${startYear.toString()}';
      return mediaStart;
    }

    return Card(
        child: Row(children: [
      if (imageUrl != null)
        CachedNetworkImage(
          imageUrl: imageUrl,
          height: 400,
          width: 100,
          fit: BoxFit.fitHeight,
          placeholder: (context, url) => const Center(child: SizedBox()),
        ),
      Expanded(
          child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              media.title?.userPreferred ?? '',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 4),
            Row(children: [
              Text(toJson$Enum$MediaType(mediaType)),
              const SizedBox(width: 5),
              Text(toJson$Enum$MediaFormat(mediaFormat)),
              const SizedBox(width: 5),
              Text(getMediaStart(media)),
            ]),
            const SizedBox(height: 4),
            Text(toJson$Enum$MediaStatus(mediaStatus)),
            const Spacer(),
            Row(
              children: [
                const Icon(Icons.star_rate_rounded, size: 21),
                Text('${media.meanScore}'),
                const SizedBox(width: 15),
                const Icon(Icons.favorite, size: 17),
                const SizedBox(width: 4),
                Text('${media.popularity}'),
              ],
            ),
          ],
        ),
      ))
    ]));
  }
}

// TODO: on this page
// - add styling to MediaCard (use chips/tags instead of text), and add color
// - handle null values in MediaCard
// - add user status to MediaCard
// - test out error on graphql client

// TODO: refactor search_screen to other files.
// /screens
//   /scearch_screen
//     - search_screen.dart
//     /components
//       - media_card.dart
//       - etc.dart

// TODO: overall project
// 1. manga/anime page by ID
// 2. signin funtionality
// 3. My List page
