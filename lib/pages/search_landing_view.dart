import 'package:anilist_ui/graphql/anilist/schema.graphql.dart';
import 'package:anilist_ui/graphql/anilist/searchLandingView.graphql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../common/util/date_util.dart';
import '../common/widgets/centered_item.dart';

class SearchLandingView extends HookWidget {
  const SearchLandingView({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    var currentSeason = getSeason(currentDate);
    var nextSeason = getNextSeason(currentSeason);

    var query = useQuery$SearchLandingPage(
      Options$Query$SearchLandingPage(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$SearchLandingPage(
          perPage: 8,
          season: currentSeason,
          seasonYear: currentDate.year,
          nextSeason: nextSeason,
          nextYear: nextSeason == Enum$MediaSeason.WINTER
              ? currentDate.year + 1
              : currentDate.year,
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
    var animeSections = [
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
    ];

    return Expanded(
      child: SingleChildScrollView(
        child: Row(
          children: [
            const Spacer(flex: 1),
            Expanded(
              flex: 25,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 50,
                children: animeSections,
              ),
            ),
            const Spacer(flex: 1),
          ],
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
    ScrollController scrollController = ScrollController();
    TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Text(title, style: textTheme.titleLarge),
        SizedBox(
          height: _cardHeight,
          child: Scrollbar(
            controller: scrollController,
            child: ListView.separated(
              shrinkWrap: true,
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: mediaList.length,
              separatorBuilder: (_, __) => const SizedBox(width: 20),
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
    final textTheme = Theme.of(context).textTheme;

    if (media == null) {
      return const SizedBox.shrink();
    }

    Widget recentAiringTag() {
      if (media?.nextAiringEpisode?.episode == null ||
          media?.nextAiringEpisode?.timeUntilAiring == null) {
        return const SizedBox.shrink();
      }

      Duration timeUntilAiring =
          Duration(seconds: media!.nextAiringEpisode!.timeUntilAiring);
      if (timeUntilAiring.inDays > 7 || timeUntilAiring.inMicroseconds < 0) {
        return const SizedBox.shrink();
      }

      String text = 'ep. ${media?.nextAiringEpisode?.episode} ';
      if (timeUntilAiring.inSeconds < 60) {
        text += 'on now';
      }
      if (timeUntilAiring.inMinutes < 60) {
        text += 'in ${timeUntilAiring.inMinutes} mins';
      }
      if (timeUntilAiring.inHours < 24) {
        text += 'in ${timeUntilAiring.inHours} hours';
      } else {
        text += 'in ${timeUntilAiring.inDays} days';
      }

      return Padding(
        padding: const EdgeInsets.only(top: 8, left: 2),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(text,
              style: textTheme.labelMedium!.copyWith(color: Colors.white)),
        ),
      );
    }

    return SizedBox(
      height: _cardHeight,
      width: _cardWidth,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              CachedNetworkImage(
                imageUrl: media?.coverImage?.large ?? '',
                placeholder: (context, url) => const Center(child: SizedBox()),
                height: _cardWidth * 3 / 2,
                width: _cardWidth,
                fit: BoxFit.contain,
              ),
              recentAiringTag(),
            ],
          ),
          Text(
            media?.title?.userPreferred ?? '',
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
