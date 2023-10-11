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
          perPage: 6,
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
        // TODO: Look into why this error occurs. Possibly from fragments?
        print('Unable to read cache.');
      } else {
        print('Unknown exception occurred: ${result.exception}');
        return const CenteredItem(
            flex: true, item: Text('An error has occurred.'));
      }
    }

    var items = result.parsedData?.trending?.media ?? [];
    print(items.length);

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
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Wrap(
            spacing: 60,
            runSpacing: 16,
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
          ),
        ),
      ),
    );
  }
}

class AnimeSection extends StatelessWidget {
  const AnimeSection({super.key, required this.mediaList, required this.title});

  final String title;
  final List<Fragment$media?> mediaList;

  @override
  Widget build(BuildContext context) {
    var scrollController = ScrollController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: _cardHeight,
          child: Scrollbar(
            controller: scrollController,
            child: ListView.separated(
              shrinkWrap: true,
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: mediaList.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (_, i) => AnimeCard(media: mediaList[i]),
            ),
          ),
        ),
      ],
    );
  }
}

double _cardHeight = 240;
double _cardWidth = 120;

class AnimeCard extends StatelessWidget {
  const AnimeCard({super.key, required this.media});

  final Fragment$media? media;

  @override
  Widget build(BuildContext context) {
    if (media == null) return SizedBox.shrink();

    return SizedBox(
      height: _cardHeight,
      width: _cardWidth,
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: media?.coverImage?.large ?? '',
            placeholder: (context, url) => const Center(child: SizedBox()),
            // TODO: use 230x345 for web view
            height: 180,
            width: _cardWidth,
            fit: BoxFit.contain,
          ),
          Text(
            textAlign: TextAlign.start,
            media?.title?.userPreferred ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
