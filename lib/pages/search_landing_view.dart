import 'dart:js_interop';

import 'package:anilist_ui/graphql/anilist/schema.graphql.dart';
import 'package:anilist_ui/graphql/anilist/searchLandingView.graphql.dart';
import 'package:anilist_ui/pages/search_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pretty_json/pretty_json.dart';

class SearchLandingView extends HookWidget {
  const SearchLandingView({super.key});

  @override
  Widget build(BuildContext context) {
    var query = useQuery$SearchLandingPage(
      Options$Query$SearchLandingPage(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$SearchLandingPage(
          // TODO: create utility functions to calculate these
          season: Enum$MediaSeason.FALL,
          seasonYear: 2023,
          nextSeason: Enum$MediaSeason.WINTER,
          nextYear: 2023,
        ),
      ),
    );

    var result = query.result;

    if (result.isLoading) {
      return const CenteredItem(flex: true, item: CircularProgressIndicator());
    }

    if (result.hasException) {
      var exception = result.exception;
      if (exception?.linkException is CacheMissException) {
        print('Unable to read cache.');
      } else {
        print('Unknown exception occurred: ${result.exception}');
        return const CenteredItem(
            flex: true, item: Text('An error has occurred.'));
      }
    }

    return LandingContent(
      data: result.parsedData ?? Query$SearchLandingPage(),
    );
  }
}

class LandingContent extends StatelessWidget {
  const LandingContent({super.key, required this.data});

  final Query$SearchLandingPage data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimeSection(
          title: 'Trending',
          mediaList: data.trending?.media ?? [],
        ),
        AnimeSection(
          title: 'Popular This Season',
          mediaList: data.season?.media ?? [],
        ),
        AnimeSection(
          title: 'Upcoming Next Season',
          mediaList: data.nextSeason?.media ?? [],
        ),
        AnimeSection(
          title: 'All Time Popular',
          mediaList: data.popular?.media ?? [],
        ),
        AnimeSection(
          title: 'Top Scoring Anime',
          mediaList: data.top?.media ?? [],
        ),
      ],
    );
  }
}

class AnimeSection extends StatelessWidget {
  const AnimeSection({super.key, required this.mediaList, required this.title});

  final String title;
  final List<Fragment$media?> mediaList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        SizedBox(
          height: 400,
          width: 400,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: mediaList.length,
            itemBuilder: (context, index) {
              var media = mediaList[index];
              return (media == null)
                  ? const SizedBox.shrink()
                  : AnimeCard(media: media);
            },
          ),
        ),
      ],
    );
  }
}

class AnimeCard extends StatelessWidget {
  const AnimeCard({super.key, required this.media});

  final Fragment$media media;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CachedNetworkImage(
        //   imageUrl: media.coverImage?.large ?? '',
        //   placeholder: (context, url) => const Center(child: SizedBox()),
        //   // height: 400,
        //   // width: 100,
        //   // fit: BoxFit.fitHeight,
        // ),
        Text(media.title?.userPreferred ?? ''),
      ],
    );
  }
}
