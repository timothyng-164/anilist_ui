import 'package:anilist_ui/common/util/label_util.dart';
import 'package:anilist_ui/pages/search_landing_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../common/widgets/media_card.dart';
import '../graphql/anilist/schema.graphql.dart';
import '../graphql/anilist/query/search.graphql.dart';

class SearchPage extends HookWidget {
  const SearchPage({super.key});

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
          scrollController.position.maxScrollExtent - 100;

      if (scrolledToBottom &&
          !isLoadingMore.value &&
          hasNextpage.value &&
          searchEnabled.value) {
        fetchPage();
      }
    });

    Widget displayContent() {
      if (hasError.value) {
        return const Expanded(
          child: Center(child: Text('An error has occured. Please try again.')),
        );
      }

      if (!searchEnabled.value) {
        return const SearchLandingView();
      }

      if (isLoading.value) {
        return const Expanded(
            child: Center(child: CircularProgressIndicator()));
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
    PopupMenuItem<Enum$MediaType?> menuItem(
        Enum$MediaType option, String text) {
      bool isSelected = mediaType.value == option ||
          (mediaType.value == null && option == Enum$MediaType.$unknown);

      return PopupMenuItem(
        value: option,
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              size: 18,
            ),
            const SizedBox(width: 8),
            Text(text),
          ],
        ),
      );
    }

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
              // TODO: use Flutter Dialog for complex search filters
              child: PopupMenuButton<Enum$MediaType?>(
                icon: const Icon(Icons.filter_list),
                onSelected: (value) {
                  searchEnabled.value = true;
                  mediaType.value = value ?? Enum$MediaType.$unknown;
                },
                itemBuilder: (BuildContext context) => [
                  menuItem(Enum$MediaType.$unknown, 'All'),
                  menuItem(Enum$MediaType.ANIME, 'Anime'),
                  menuItem(Enum$MediaType.MANGA, 'Manga'),
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
      return const Expanded(child: Center(child: Text('No results found.')));
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
                child: Center(child: CircularProgressIndicator()));
          }
          var media = mediaList.value[index];
          return (media != null) ? ResultCard(media: media) : null;
        },
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  const ResultCard({super.key, required this.media});

  final Query$Search$Page$media media;

  @override
  Widget build(BuildContext context) {
    Widget infoRow() {
      String? mediaFormat = LabelUtil.mediaFormatLabel(media.format);
      int? startYear = media.seasonYear ?? media.startDate?.year;

      var items = [mediaFormat, startYear];
      items.removeWhere((item) => item == null);

      return Text(items.join(", "));
    }

    Widget statusRow() {
      String? mediaStatus = LabelUtil.mediaStatusLabel(media.status);

      String progress = '';
      if (media.chapters != null) progress = '(${media.chapters} ch)';
      if (media.volumes != null) progress = '(${media.volumes} vol)';
      if (media.episodes != null) progress = '(${media.episodes} ep)';

      return Text('${mediaStatus ?? ''} $progress');
    }

    Row engagementRow() {
      List<Widget> rowChildren = [];
      if (media.meanScore != null) {
        rowChildren.addAll([
          const Icon(Icons.star_rate_rounded, size: 21),
          Text('${media.meanScore}'),
          const SizedBox(width: 15),
        ]);
      }
      if (media.popularity != null) {
        rowChildren.addAll([
          const Icon(Icons.favorite, size: 17),
          const SizedBox(width: 4),
          Text('${media.popularity}'),
        ]);
      }
      return Row(
        children: rowChildren,
      );
    }

    Widget topContent = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          media.title?.userPreferred ?? '',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 4),
        infoRow(),
        const SizedBox(height: 4),
        statusRow(),
      ],
    );

    return MediaCard(
      mediaType: media.type ?? Enum$MediaType.$unknown,
      mediaId: media.id,
      imageUrl: media.coverImage?.medium,
      topContent: topContent,
      bottomContent: engagementRow(),
    );
  }
}
