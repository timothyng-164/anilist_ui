import 'dart:math';

import 'package:anilist_ui/common/util/html_util.dart';
import 'package:anilist_ui/common/util/label_util.dart';
import 'package:anilist_ui/common/util/scale_size.dart';
import 'package:anilist_ui/common/widgets/media_favourite_button.dart';
import 'package:anilist_ui/common/widgets/overflow_detector_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../common/widgets/list_entry_button.dart';
import '../common/widgets/media_card.dart';
import '../common/widgets/query_result_handler.dart';
import '../graphql/anilist/query/mediaById.graphql.dart';
import '../graphql/anilist/schema.graphql.dart';
import '../state/auth_state.dart';

class MediaByIdPage extends HookWidget {
  const MediaByIdPage({super.key, required this.id, required this.mediaType});

  final int id;
  final Enum$MediaType mediaType;

  @override
  Widget build(BuildContext context) {
    var authState = context.read<AuthState>();
    bool isAuthenticated = authState.isAuthenticated();

    var query = useQuery$GetMediaById(
      Options$Query$GetMediaById(
        variables: Variables$Query$GetMediaById(id: id, type: mediaType),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    var result = query.result;
    var media = result.parsedData?.Media;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(LabelUtil.mediaTypeLabel(mediaType)!),
            if (isAuthenticated && result.isNotLoading && !result.hasException)
              UserUpdateButtons(media: media)
          ],
        ),
      ),
      body: SafeArea(
        child: QueryResultHandler(
          result: result,
          refetch: query.refetch,
          child: PageContent(id: id, media: media),
        ),
      ),
    );
  }
}

class UserUpdateButtons extends HookWidget {
  const UserUpdateButtons({super.key, this.media});

  final Query$GetMediaById$Media? media;

  @override
  Widget build(BuildContext context) {
    if (media == null) return const SizedBox.shrink();
    var listEntry = media?.mediaListEntry;

    return Row(
      children: [
        MediaFavouriteButton(
            isFavourite: media?.isFavourite ?? false,
            isFavouriteBlocked: media?.isFavouriteBlocked ?? false,
            isLocked: media?.isLocked ?? false,
            mediaType: media!.type!,
            mediaId: media!.id),
        ListEntryButton(
            mediaId: media!.id,
            mediaType: media!.type,
            entryExists: listEntry?.id != null),
      ],
    );
  }
}

class PageContent extends StatelessWidget {
  const PageContent({super.key, required this.id, this.media});

  final int id;
  final Query$GetMediaById$Media? media;

  @override
  Widget build(BuildContext context) {
    if (media == null) return const SizedBox.shrink();
    return SingleChildScrollView(
      child: Row(
        children: [
          const Spacer(flex: 1),
          Expanded(
            flex: 15,
            child: Column(
              children: [
                TitleSection(media: media!),
                const SizedBox(height: 20),
                GenreSection(genres: media!.genres),
                const SizedBox(height: 10),
                DescriptionSection(description: media!.description),
                const SizedBox(height: 10),
                InfoSection(media: media!),
                const SizedBox(height: 20),
                RelationSection(relations: media!.relations),
                const SizedBox(height: 20),
                TagsSection(mediaTags: media!.tags),
                const SizedBox(height: 20),
                RecommendationSection(
                    recommendations: media!.recommendations?.nodes),
                const SizedBox(height: 20),                
              ],
            ),
          ),
          const Spacer(flex: 1)
        ],
      ),
    );
  }
}

class HorizontalScrollingSection extends HookWidget {
  const HorizontalScrollingSection({
    super.key,
    this.title,
    this.items,
    this.itemHeight = 140,
    required this.itemBuilder,
  });

  final String? title;
  final List<Object?>? items;
  final double? itemHeight;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    if (items == null || items!.isEmpty) return const SizedBox.shrink();
    final textTheme = Theme.of(context).textTheme;
    final ScrollController scrollController = useScrollController();

    return Scrollbar(
      controller: scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Text(
              title!,
              style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w800),
            ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 8),
            height: itemHeight,
            child: ListView.separated(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: items!.length,
              separatorBuilder: (_, __) => const SizedBox(width: 10),
              itemBuilder: itemBuilder,
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({super.key, this.recommendations});

  final List<Query$GetMediaById$Media$recommendations$nodes?>? recommendations;

  @override
  Widget build(BuildContext context) {
    double cardHeight = 140;
    if (recommendations != null) {
      recommendations!.removeWhere(
        (rec) => rec!.rating == null || rec.rating! <= 0,
      );
    }

    return HorizontalScrollingSection(
      title: 'Recommended Media',
      items: recommendations,
      itemHeight: cardHeight,
      itemBuilder: (_, i) {
        var recommendation = recommendations![i];
        return RecommendationCard(
          recommendation: recommendation,
          cardHeight: cardHeight,
        );
      },
    );
  }
}

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
    this.recommendation,
    required this.cardHeight,
  });
  final Query$GetMediaById$Media$recommendations$nodes? recommendation;
  final double cardHeight;

  @override
  Widget build(BuildContext context) {
    if (recommendation == null) return const SizedBox.shrink();

    final textTheme = Theme.of(context).textTheme;

    Widget topContent() {
      List<String?> details = [
        LabelUtil.mediaFormatLabel(recommendation?.mediaRecommendation?.format),
        LabelUtil.mediaStatusLabel(recommendation?.mediaRecommendation?.status),
      ];
      details.removeWhere((e) => e == null);

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation?.mediaRecommendation?.title?.userPreferred ?? '',
            style: textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Text(details.join(' · '))
        ],
      );
    }

    Widget bottomContent() {
      if (recommendation?.rating == null) return const SizedBox.shrink();
      return Row(
        children: [
          const Icon(Icons.thumb_up),
          const SizedBox(width: 8),
          Text('${recommendation!.rating!}'),
        ],
      );
    }

    return MediaCard(
      mediaType:
          recommendation?.mediaRecommendation?.type ?? Enum$MediaType.$unknown,
      mediaId: recommendation?.mediaRecommendation?.id ?? -1,
      height: cardHeight,
      width: cardHeight * 2,
      imageUrl: recommendation?.mediaRecommendation?.coverImage?.medium,
      topContent: topContent(),
      bottomContent: bottomContent(),
    );
  }
}

class RelationSection extends StatelessWidget {
  const RelationSection({super.key, required this.relations});

  final Query$GetMediaById$Media$relations? relations;

  @override
  Widget build(BuildContext context) {
    const double cardHeight = 140;

    return HorizontalScrollingSection(
      title: 'Related Media',
      items: relations?.edges,
      itemHeight: cardHeight,
      itemBuilder: (_, i) {
        var relation = relations!.edges![i];
        return RelationCard(relation: relation, cardHeight: cardHeight);
      },
    );
  }
}

class RelationCard extends StatelessWidget {
  const RelationCard({super.key, this.relation, required this.cardHeight});
  final Query$GetMediaById$Media$relations$edges? relation;
  final double cardHeight;

  @override
  Widget build(BuildContext context) {
    if (relation?.node?.type == null || relation?.node?.id == null) {
      return const SizedBox.shrink();
    }
    final textTheme = Theme.of(context).textTheme;

    Widget topContent = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LabelUtil.mediaRelationLabel(relation?.relationType) ?? '',
          style: textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          relation?.node?.title?.userPreferred ?? '',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );

    Widget bottomContent() {
      List<String?> details = [
        LabelUtil.mediaFormatLabel(relation?.node?.format),
        LabelUtil.mediaStatusLabel(relation?.node?.status),
      ];
      details.removeWhere((e) => e == null);
      return Text(details.join(' · '));
    }

    return MediaCard(
      mediaType: relation!.node!.type!,
      mediaId: relation!.node!.id,
      height: cardHeight,
      width: cardHeight * 2,
      imageUrl: relation?.node?.coverImage?.medium,
      topContent: topContent,
      bottomContent: bottomContent(),
    );
  }
}

class TagsSection extends HookWidget {
  const TagsSection({super.key, this.mediaTags});

  final List<Query$GetMediaById$Media$tags?>? mediaTags;

  @override
  Widget build(BuildContext context) {
    if (mediaTags == null || mediaTags!.isEmpty) {
      return const SizedBox.shrink();
    }

    bool containsSpoilers = mediaTags!.firstWhere(
            (tag) =>
                tag?.isGeneralSpoiler == true || tag?.isMediaSpoiler == true,
            orElse: () => null) !=
        null;
    var showSpoilers = useState<bool>(false);

    var textTheme = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;

    var filteredTags = mediaTags!.where((tag) {
      if (tag == null) return false;
      if (showSpoilers.value) return true;
      return tag.isGeneralSpoiler == false && tag.isMediaSpoiler == false;
    }).toList();

    List<Query$GetMediaById$Media$tags> leftTags = [];
    List<Query$GetMediaById$Media$tags> rightTags = [];
    for (int i = 0; i < filteredTags.length; i++) {
      if (filteredTags[i] == null) continue;
      i % 2 == 0
          ? leftTags.add(filteredTags[i]!)
          : rightTags.add(filteredTags[i]!);
    }

    TextStyle getTagStyle(Query$GetMediaById$Media$tags tag) {
      return textTheme.bodySmall!.copyWith(
          color: tag.isGeneralSpoiler == true || tag.isMediaSpoiler == true
              ? colorScheme.surfaceTint
              : null);
    }

    Row buildTagRow(Query$GetMediaById$Media$tags tag) {
      return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 8,
          child: Text(
            tag.name,
            overflow: TextOverflow.ellipsis,
            style: getTagStyle(tag),
            textScaleFactor: ScaleSize.scaleFactor(context),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            '${tag.rank}%',
            style: getTagStyle(tag),
            textScaleFactor: ScaleSize.scaleFactor(context),
          ),
        ),
      ]);
    }

    Column buildTagColumn(List<Query$GetMediaById$Media$tags> tags) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: tags.map((tag) => buildTagRow(tag)).toList(),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tags',
          style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w800),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 8, child: buildTagColumn(leftTags)),
            const Spacer(flex: 1),
            Expanded(flex: 8, child: buildTagColumn(rightTags)),
          ],
        ),
        if (containsSpoilers)
          TextButton(
            onPressed: () => showSpoilers.value = !showSpoilers.value,
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Text(
              '${showSpoilers.value ? 'Hide' : 'Show'} spoiler tags',
              style: const TextStyle(fontSize: 10),
              textAlign: TextAlign.left,
            ),
          )
      ],
    );
  }
}

class InfoSection extends StatelessWidget {
  const InfoSection({
    super.key,
    required this.media,
  });

  final Query$GetMediaById$Media media;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    Widget buildRow(String title, String? value) {
      if (value == null) return const SizedBox.shrink();
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 5,
              child: Text(
                title,
                textAlign: TextAlign.left,
                textScaleFactor: ScaleSize.scaleFactor(context),
              )),
          const Spacer(flex: 1),
          Expanded(
              flex: 6,
              child: Text(
                value,
                textAlign: TextAlign.left,
                textScaleFactor: ScaleSize.scaleFactor(context),
              )),
        ],
      );
    }

    Widget buildRowFromInt(String title, int? value) {
      return buildRow(title, value == null ? null : '$value');
    }

    Widget buildRowFromList(String title, List<String?>? values) {
      if (values == null) return const SizedBox.shrink();
      values.removeWhere((v) => v == null);
      return buildRow(title, values.isEmpty ? null : values.join('\n'));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Info',
            style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w800)),
        const SizedBox(height: 20),
        buildRow('Romanji', media.title?.romaji),
        buildRow('English', media.title?.english),
        buildRow('Native', media.title?.native),
        buildRowFromList('Also known as', media.synonyms),
        const Divider(),
        buildRow('Format', LabelUtil.mediaFormatLabel(media.format)),
        buildRowFromInt('Episodes', media.episodes),
        buildRow('Duration',
            media.duration == null ? null : '${media.duration} mins'),
        buildRowFromInt('Chapters', media.chapters),
        buildRowFromInt('Volumes', media.volumes),
        buildRow('Status', LabelUtil.mediaStatusLabel(media.status)),
        buildRow('Source', LabelUtil.mediaSourceLabel(media.source)),
        buildRow(
            'Start Date',
            LabelUtil.dateLabel(media.startDate?.day, media.startDate?.month,
                media.startDate?.year)),
        buildRow(
            'End Date',
            LabelUtil.dateLabel(
                media.endDate?.day, media.endDate?.month, media.endDate?.year)),
        buildRow('Season',
            LabelUtil.seasonYearLabel(media.season, media.seasonYear)),
        buildRowFromList(
            'Studios',
            media.studios?.edges!
                .where((edge) => edge?.isMain == true)
                .map((e) => e?.node?.name)
                .toList()),
        buildRowFromList(
            'Producers',
            media.studios?.edges!
                .where((edge) => edge?.isMain == false)
                .map((e) => e?.node?.name)
                .toList()),
        const Divider(),
        buildRow('Mean Score',
            media.meanScore == null ? null : '${media.meanScore}%'),
        buildRowFromInt('Popularity', media.popularity),
        buildRowFromInt('Favorites', media.favourites),
      ],
    );
  }
}

class DescriptionSection extends HookWidget {
  const DescriptionSection({super.key, this.description});
  final String? description;

  @override
  Widget build(BuildContext context) {
    if (description == null || description!.isEmpty) {
      return const SizedBox.shrink();
    }

    final isExpanded = useState<bool>(false);
    final isOverflowing = useState<bool>(false);

    String parsedDescription = HtmlUtil.parseHtmlString(description!);

    return Column(
      children: [
        OverflowDetectorText(
          isOverflowing: isOverflowing,
          child: Text(
            parsedDescription,
            overflow: isExpanded.value ? null : TextOverflow.ellipsis,
            maxLines: isExpanded.value ? null : 4,
          ),
        ),
        isOverflowing.value || isExpanded.value
            ? IconButton(
                onPressed: () => isExpanded.value = !isExpanded.value,
                icon: Icon(
                    isExpanded.value ? Icons.expand_less : Icons.expand_more),
              )
            : const SizedBox(height: 20),
      ],
    );
  }
}

class GenreSection extends StatelessWidget {
  const GenreSection({super.key, this.genres});
  final List<String?>? genres;

  @override
  Widget build(BuildContext context) {
    if (genres == null) return const SizedBox.shrink();
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: genres!.where((genre) => genre != null).map((genre) {
        return Chip(
          label: Text(genre!),
          labelPadding: const EdgeInsets.all(0),
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 6),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        );
      }).toList(),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.media});

  final Query$GetMediaById$Media media;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    double screenWidth = MediaQuery.of(context).size.width;

    var imgWidth = min(screenWidth / 2, 300).toDouble();
    var imgHeight = imgWidth * 3 / 2;

    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: media.coverImage?.large ?? '',
          height: imgHeight,
          width: imgWidth,
          fit: BoxFit.fitHeight,
        ),
        const Spacer(flex: 1),
        Expanded(
          flex: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                media.title?.userPreferred ?? '',
                style: textTheme.titleLarge,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                textScaleFactor: ScaleSize.scaleFactor(context),
              ),
              const SizedBox(height: 4),
              Text(
                media.type == Enum$MediaType.ANIME
                    ? LabelUtil.seasonYearLabel(
                            media.season, media.seasonYear) ??
                        ''
                    : '${media.startDate?.year ?? ''}',
                style: textTheme.titleMedium,
                textScaleFactor: ScaleSize.scaleFactor(context),
              ),
              const SizedBox(height: 10),
              if (media.format != null)
                Chip(
                  label: Text(
                    LabelUtil.mediaFormatLabel(media.format) ?? '',
                    textScaleFactor: ScaleSize.scaleFactor(context),
                  ),
                  padding: const EdgeInsets.all(0),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
