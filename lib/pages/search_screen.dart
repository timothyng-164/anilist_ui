import 'package:anilist_ui/graphql/schema.graphql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pretty_json/pretty_json.dart';
import 'package:anilist_ui/graphql/search.graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final searchText = useState('');
    QueryHookResult<Query$SearchAnime> readResult = useQuery$SearchAnime(
      Options$Query$SearchAnime(
          variables: Variables$Query$SearchAnime(
            perPage: 20,
            search: searchText.value.isEmpty ? null : searchText.value,
            // TODO: use user setting
            isAdult: false,
          ),
          fetchPolicy: FetchPolicy.cacheFirst),
    );

    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //     title: SearchWidget(
      //       searchText: searchText,
      //     )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchWidget(
              searchText: searchText,
            ),
            SearchResults(readResult: readResult),
          ],
        ),
      ),
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
  });

  final ValueNotifier<String> searchText;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        // margin: const EdgeInsets.all(16.0),
        child: SearchBar(
          shape: const MaterialStatePropertyAll(RoundedRectangleBorder()),
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0)),
          // onChanged: (value) => print(value),
          onSubmitted: (value) {
            searchText.value = value;
            print(value);
          },
          leading: const Icon(Icons.search),
          trailing: <Widget>[
            Tooltip(
              message: 'Search Filters',
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.filter_list),
              ),
            )
          ],
        ));
  }
}

class SearchResults extends HookWidget {
  const SearchResults({super.key, required this.readResult});

  final QueryHookResult<Query$SearchAnime> readResult;

  @override
  Widget build(BuildContext context) {
    final result = readResult.result;

    if (result.hasException) {
      print(result.exception);
      return const Text("Unable to search.");
    }

    if (result.isLoading) {
      return const CircularProgressIndicator();
    }

    List<Query$SearchAnime$Page$media?>? mediaList =
        result.parsedData?.Page?.media ?? [];

    if (mediaList.isEmpty) {
      return const Text("No results found.");
    }

    return Expanded(
      child:
          // Column(children: [
          GridView.builder(
        itemCount: mediaList.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 600,
          childAspectRatio: 600 / 200,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
        itemBuilder: (BuildContext context, int index) {
          var media = mediaList[index];
          return (media != null) ? MediaCard(media: media) : null;
        },
      ),
      // OutlinedButton(onPressed: () {}, child: const Text("Load More")),
      // ])
    );
  }
}

class MediaCard extends StatelessWidget {
  const MediaCard({
    super.key,
    required this.media,
  });

  final Query$SearchAnime$Page$media media;

  @override
  Widget build(BuildContext context) {
    String? imageUrl = media.coverImage?.medium;
    var mediaType = media.type ?? Enum$MediaType.$unknown;
    var mediaFormat = media.format ?? Enum$MediaFormat.$unknown;
    var mediaStatus = media.status ?? Enum$MediaStatus.$unknown;

    String getMediaStart(media) {
      var startSeason = media.season ?? Enum$MediaSeason.$unknown;
      int? startYear = media.seasonYear ?? media.startDate?.year;
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
              // TODO: use chips/tags instead of text
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
// - paginate when scrolled to bottom
// - add user status to media
