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
      ScrollingAnimeSection(
        title: 'Trending',
        mediaList: data.trending?.media ?? [],
      ),
      ScrollingAnimeSection(
        title: 'Popular This Season',
        mediaList: data.season?.media ?? [],
      ),
      ScrollingAnimeSection(
        title: 'Upcoming Next Season',
        mediaList: data.nextSeason?.media ?? [],
      ),
      ScrollingAnimeSection(
        title: 'All Time Popular',
        mediaList: data.popular?.media ?? [],
      ),
      ScrollingAnimeSection(
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

class ScrollingAnimeSection extends StatelessWidget {
  const ScrollingAnimeSection(
      {super.key, required this.mediaList, required this.title});

  final String title;
  final List<Fragment$media?> mediaList;

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    TextTheme textTheme = Theme.of(context).textTheme;

    double cardHeight = 240;
    double cardWidth = 120;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Text(title, style: textTheme.titleLarge),
        const SizedBox(height: 8),
        SizedBox(
          height: cardHeight,
          child: Scrollbar(
            controller: scrollController,
            child: ListView.separated(
              shrinkWrap: true,
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: mediaList.length,
              separatorBuilder: (_, __) => const SizedBox(width: 20),
              itemBuilder: (_, i) => SizedBox(
                height: cardHeight,
                width: cardWidth,
                child: AnimeCard(media: mediaList[i], cardWidth: cardWidth),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AnimeCard extends StatelessWidget {
  const AnimeCard({super.key, required this.media, required this.cardWidth});

  final Fragment$media? media;
  final double cardWidth;

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
        padding: const EdgeInsets.only(top: 4, left: 2),
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

    return Column(
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            CachedNetworkImage(
              imageUrl: media?.coverImage?.large ?? '',
              placeholder: (context, url) => const Center(child: SizedBox()),
              height: cardWidth * 3 / 2,
              width: cardWidth,
              fit: BoxFit.fitHeight,
            ),
            recentAiringTag(),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          media?.title?.userPreferred ?? '',
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
