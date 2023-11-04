import 'package:anilist_ui/common/widgets/query_result_handler.dart';
import 'package:anilist_ui/graphql/anilist/query/userProfile.graphql.dart';
import 'package:anilist_ui/routing/routes.dart';
import 'package:anilist_ui/state/auth_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

import '../common/util/label_util.dart';
import '../common/util/navigation_util.dart';
import '../graphql/anilist/schema.graphql.dart';

class ProfilePage extends HookWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var authState = context.watch<AuthState>();

    var query = useQuery$GetUserProfile(
      Options$Query$GetUserProfile(fetchPolicy: FetchPolicy.cacheAndNetwork),
    );

    var result = query.result;
    var data = result.parsedData?.Viewer;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Profile'),
            PopupMenuButton<void>(
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  height: 0,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: const Text('Logout'),
                  onTap: () {
                    authState.clearToken();
                    const BrowseRoute().go(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
      body: QueryResultHandler(
        result: result,
        child: RefreshIndicator(
          onRefresh: () => Future<void>(() => query.refetch()),
          child: PageContent(data: data),
        ),
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  const PageContent({super.key, required this.data});

  final Query$GetUserProfile$Viewer? data;

  @override
  Widget build(BuildContext context) {
    var spacer = const SizedBox(height: 20);

    List<Widget> pageSections = [
      spacer,
      AboutSection(data: data),
      spacer,
      AnimeStatsSection(data: data),
      spacer,
      MangaStatsSection(data: data),
      spacer,
      FavoritesSection(
          title: 'Favorite Anime', favorites: data?.favourites?.anime?.nodes),
      spacer,
      FavoritesSection(
          title: 'Favorite Manga', favorites: data?.favourites?.manga?.nodes),
    ];

    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Row(
        children: [
          const Spacer(flex: 1),
          Expanded(
            flex: 10,
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 450),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: pageSections,
                ),
              ),
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, required this.data});

  final Query$GetUserProfile$Viewer? data;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    String? avatarImg = data?.avatar?.medium;
    String? siteUrl = data?.siteUrl;

    var avatar = Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: (avatarImg == null)
              ? null
              : CachedNetworkImageProvider(data!.avatar!.medium!),
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (data?.name != null)
              Text(data!.name, style: textTheme.titleLarge),
          ],
        )
      ],
    );

    return Row(
      children: [
        const Spacer(),
        InkWell(
          onTap: siteUrl != null
              ? () => NavigationUtil.launchExternalUrl(siteUrl)
              : null,
          child: avatar,
        ),
        const Spacer(),
      ],
    );
  }
}

class StatsSection extends StatelessWidget {
  const StatsSection({super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title, style: textTheme.titleMedium),
            const Tooltip(
                triggerMode: TooltipTriggerMode.tap,
                message: 'User statistics are refreshed every 48 hours.',
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Icon(Icons.info_outline_rounded, size: 14),
                )),
          ],
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 30,
          runSpacing: 20,
          alignment: WrapAlignment.spaceAround,
          children: children,
        )
      ],
    );
  }
}

class AnimeStatsSection extends StatelessWidget {
  const AnimeStatsSection({super.key, required this.data});

  final Query$GetUserProfile$Viewer? data;

  @override
  Widget build(BuildContext context) {
    var animeStats = data?.statistics?.anime;

    Duration watchedDuration =
        Duration(minutes: animeStats?.minutesWatched ?? 0);
    int completeCount = animeStats?.statuses
            ?.firstWhereOrNull(
                (s) => s?.status == Enum$MediaListStatus.COMPLETED)
            ?.count ??
        0;

    int planningCount = animeStats?.statuses
            ?.firstWhereOrNull(
                (s) => s?.status == Enum$MediaListStatus.PLANNING)
            ?.count ??
        0;

    return StatsSection(
      title: 'Anime Summary',
      children: [
        StatSummary(title: 'List Entries', stat: animeStats?.count ?? 0),
        StatSummary(
            title: '${LabelUtil.durationLabel(watchedDuration)} Watched',
            stat: LabelUtil.durationValue(watchedDuration)),
        StatSummary(title: 'Completed', stat: completeCount),
        StatSummary(title: 'Planning', stat: planningCount),
      ],
    );
  }
}

class MangaStatsSection extends StatelessWidget {
  const MangaStatsSection({super.key, required this.data});

  final Query$GetUserProfile$Viewer? data;

  @override
  Widget build(BuildContext context) {
    var mangaStats = data?.statistics?.manga;

    int completeCount = mangaStats?.statuses
            ?.firstWhereOrNull(
                (s) => s?.status == Enum$MediaListStatus.COMPLETED)
            ?.count ??
        0;

    int planningCount = mangaStats?.statuses
            ?.firstWhereOrNull(
                (s) => s?.status == Enum$MediaListStatus.PLANNING)
            ?.count ??
        0;

    return StatsSection(
      title: 'Manga Summary',
      children: [
        StatSummary(title: 'List Entries', stat: mangaStats?.count ?? 0),
        StatSummary(
          title: 'Chapters Read',
          stat: mangaStats?.chaptersRead ?? 0,
        ),
        StatSummary(title: 'Completed', stat: completeCount),
        StatSummary(title: 'Planning', stat: planningCount),
      ],
    );
  }
}

class StatSummary extends StatelessWidget {
  const StatSummary({super.key, required this.title, required this.stat});

  final String title;
  final num stat;

  @override
  Widget build(BuildContext context) {
    List<String> words = title.split(' ');
    return Column(
      children: [
        Text('$stat'),
        ...words.map((w) => Text(w)),
      ],
    );
  }
}

class FavoritesSection extends StatelessWidget {
  const FavoritesSection(
      {super.key, required this.title, required this.favorites});

  final String title;
  final List<Fragment$mediaFavorite$nodes?>? favorites;

  @override
  Widget build(BuildContext context) {
    if (favorites == null || favorites!.isEmpty) return const SizedBox.shrink();

    var textTheme = Theme.of(context).textTheme;

    var images = favorites?.map(
      (favorite) {
        String? imgUrl = favorite?.coverImage?.medium;
        if (imgUrl == null) return const SizedBox.shrink();
        return InkWell(
          onTap: () => NavigationUtil.navigateToMedia(
              favorite?.type, favorite?.id, context),
          child: CachedNetworkImage(
            height: 120,
            width: 120 * 2 / 3,
            imageUrl: imgUrl,
            fit: BoxFit.fitHeight,
          ),
        );
      },
    ).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: textTheme.titleMedium),
        const SizedBox(height: 20),
        Wrap(spacing: 1, runSpacing: 1, children: images ?? [])
      ],
    );
  }
}
