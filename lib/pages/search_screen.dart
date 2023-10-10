import 'package:anilist_ui/graphql/schema.graphql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:anilist_ui/graphql/search.graphql.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final searchText = useState<String>('');
    final mediaType = useState<Enum$MediaType>(Enum$MediaType.$unknown);
    QueryHookResult<Query$Search> readResult = useQuery$Search(
      Options$Query$Search(
          variables: Variables$Query$Search(
        search: searchText.value.isEmpty ? null : searchText.value,
        perPage: 50,
        page: 1,
        type:
            mediaType.value == Enum$MediaType.$unknown ? null : mediaType.value,
        isAdult: false, // TODO: use user setting
      )),
    );

    return Scaffold(
      // TODO: remove or use AppBar
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchWidget(searchText: searchText, mediaType: mediaType),
            SearchResults(readResult: readResult),
          ],
        ),
      ),
      // TODO: remove this button
      floatingActionButton: FloatingActionButton(
        onPressed: () => readResult.refetch(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.searchText,
    required this.mediaType,
  });

  final ValueNotifier<Enum$MediaType?> mediaType;

  final ValueNotifier<String> searchText;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        child: SearchBar(
          shape: const MaterialStatePropertyAll(RoundedRectangleBorder()),
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0)),
          onSubmitted: (value) => searchText.value = value,
          leading: const Icon(Icons.search),
          trailing: [
            Tooltip(
              message: 'Filter Search',
              child: PopupMenuButton<Enum$MediaType?>(
                icon: const Icon(Icons.filter_list),
                onSelected: (value) => mediaType.value = value,
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
    required this.readResult,
  });

  final QueryHookResult<Query$Search> readResult;

  @override
  Widget build(BuildContext context) {
    final result = readResult.result;
    ScrollController scrollController = ScrollController();

    // When user scrolls to bottom, fetch paginated results
    scrollController.addListener(() async {
      bool scrolledToBottom = scrollController.position.pixels ==
          scrollController.position.maxScrollExtent;
      Query$Search$Page$pageInfo? data =
          readResult.result.parsedData?.Page?.pageInfo;
      bool hasNextPage = data?.hasNextPage ?? false;

      if (!scrolledToBottom || !hasNextPage) {
        return;
      }

      int currentPage = data?.currentPage ?? 0;
      var options = FetchMoreOptions$Query$Search(
        variables: Variables$Query$Search(
          page: currentPage + 1,
        ),
        updateQuery: (previousResultData, fetchMoreResultData) {
          final List<dynamic> combinedResults = [
            ...previousResultData?['Page']['media'] as List<dynamic>,
            ...fetchMoreResultData?['Page']['media'] as List<dynamic>
          ];
          fetchMoreResultData?['Page']['media'] = combinedResults;
          return fetchMoreResultData;
        },
      );

      await readResult.fetchMore(options);
    });

    if (result.hasException) {
      print(result.exception);
      return const Text("Unable to search.");
    }

    var gridDelegate = const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 600,
      childAspectRatio: 600 / 200,
      mainAxisSpacing: 6,
      crossAxisSpacing: 6,
    );

    if (result.isLoading) {
      return Expanded(
        child: GridView.builder(
          itemCount: 50,
          gridDelegate: gridDelegate,
          itemBuilder: (BuildContext context, int index) {
            return const Card();
          },
        ),
      );
    }

    List<Query$Search$Page$media?>? mediaList =
        result.parsedData?.Page?.media ?? [];

    if (mediaList.isEmpty) {
      return const Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No results found."),
          ],
        ),
      );
    }

    return Expanded(
      child: GridView.extent(
        key: const PageStorageKey<String>('resultGridKey'),
        maxCrossAxisExtent: 600,
        childAspectRatio: 600 / 200,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        controller: scrollController,
        children: mediaList
            .map((media) => media == null
                ? const SizedBox.shrink()
                : MediaCard(media: media))
            .toList(),
        // (BuildContext context, int index) {
        //   var media = mediaList[index];
        //   return (media != null) ? MediaCard(media: media) : null;
        // },
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

// TODO:
// - add styling to MediaCard (use chips/tags instead of text), and add color
// - handle null values in MediaCard
// - add user status to MediaCard
