import 'dart:math';

import 'package:anilist_ui/common/util/label_util.dart';
import 'package:anilist_ui/common/util/scale_util.dart';
import 'package:anilist_ui/graphql/anilist/mediaById.graphql.dart';
import 'package:anilist_ui/graphql/anilist/schema.graphql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MediaByIdPage extends HookWidget {
  const MediaByIdPage({super.key, required this.id, required this.mediaType});

  final int id;
  final Enum$MediaType mediaType;

  @override
  Widget build(BuildContext context) {
    var query = useQuery$GetMediaById(
      Options$Query$GetMediaById(
        variables: Variables$Query$GetMediaById(id: id, type: mediaType),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    var result = query.result;

    Widget pageBody;

    if (result.isLoading) {
      pageBody = const Center(child: CircularProgressIndicator());
    } else if (result.hasException) {
      print('Unknown exception occurred: ${result.exception}');
      pageBody = const Center(child: Text("An error has occurred."));
    } else {
      pageBody = PageContent(id: id, media: result.parsedData!.Media!);
    }

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: pageBody,
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  const PageContent({super.key, required this.id, required this.media});

  final int id;
  final Query$GetMediaById$Media media;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          const Spacer(flex: 1),
          Expanded(
            flex: 15,
            child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                children: [
                  TitleSection(media: media, maxWidth: constraints.maxWidth),
                  const SizedBox(height: 20),
                  GenreSection(genres: media.genres),
                  const SizedBox(height: 10),
                  DescriptionSection(description: media.description),
                  const SizedBox(height: 10),
                  InfoSection(media: media),
                  const SizedBox(height: 20),
                  TagsSection(mediaTags: media.tags)
                  // Tags
                  // Relations
                  // Recommendations
                  // Nice-to-haves: characters, staff, reviews, discussions, links, theme songs
                ],
              );
            }),
          ),
          const Spacer(flex: 1)
        ],
      ),
    );
  }
}

class TagsSection extends HookWidget {
  const TagsSection({super.key, this.mediaTags});

  final List<Query$GetMediaById$Media$tags?>? mediaTags;

  @override
  Widget build(BuildContext context) {
    var showSpoilers = useState<bool>(false);

    var textTheme = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;

    if (mediaTags == null && mediaTags!.isEmpty) {
      return const SizedBox.shrink();
    }

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
          ? leftTags.add(filteredTags![i]!)
          : rightTags.add(filteredTags![i]!);
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
            textScaleFactor: ScaleSize.textScaleFactor(context),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            '${tag.rank}%',
            style: getTagStyle(tag),
            textScaleFactor: ScaleSize.textScaleFactor(context),
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
          children: [
            Expanded(flex: 8, child: buildTagColumn(leftTags)),
            const Spacer(flex: 1),
            Expanded(flex: 8, child: buildTagColumn(rightTags)),
          ],
        ),
        TextButton(
          onPressed: () => showSpoilers.value = !showSpoilers.value,
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: Text(
            '${showSpoilers.value ? 'Hide' : 'Show'} tag spoilers',
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
                textScaleFactor: ScaleSize.textScaleFactor(context),
              )),
          const Spacer(flex: 1),
          Expanded(
              flex: 6,
              child: Text(
                value,
                textAlign: TextAlign.left,
                textScaleFactor: ScaleSize.textScaleFactor(context),
              )),
        ],
      );
    }

    Widget buildRowFromInt(String title, int? value) {
      return buildRow(title, value == null ? null : '$value');
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
        buildRow(
            'Also known as',
            media.synonyms == null && media.synonyms!.isEmpty
                ? null
                : media.synonyms!.join('\n')),
        const Divider(),
        buildRow('Format', mediaFormatLabel(media.format)),
        buildRowFromInt('Episodes', media.episodes),
        buildRow('Duration',
            media.duration == null ? null : '${media.duration} mins'),
        buildRowFromInt('Chapters', media.chapters),
        buildRowFromInt('Volumes', media.volumes),
        buildRow('Status', mediaStatusLabel(media.status)),
        buildRow('Source', mediaSourceLabel(media.source)),
        buildRow(
            'Start Date',
            dateLabel(media.startDate?.day, media.startDate?.month,
                media.startDate?.year)),
        buildRow(
            'End Date',
            dateLabel(
                media.endDate?.day, media.endDate?.month, media.endDate?.year)),
        buildRow('Season', seasonYearLabel(media.season, media.seasonYear)),
      ],
    );
  }
}

class DescriptionSection extends HookWidget {
  const DescriptionSection({super.key, this.description});
  final String? description;

  @override
  Widget build(BuildContext context) {
    var isExpanded = useState<bool>(false);

    if (description == null) return const SizedBox.shrink();
    return Column(
      children: [
        Html(
          data: description,
          style: {
            'html': Style(
              textOverflow: isExpanded.value ? null : TextOverflow.ellipsis,
              maxLines: isExpanded.value ? null : 4,
            )
          },
        ),
        IconButton(
          onPressed: () => isExpanded.value = !isExpanded.value,
          icon: Icon(isExpanded.value ? Icons.expand_less : Icons.expand_more),
        )
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
  const TitleSection({super.key, required this.media, required this.maxWidth});

  final Query$GetMediaById$Media media;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    var imgWidth = min(maxWidth / 2, 300).toDouble();
    var imgHeight = imgWidth * 3 / 2;

    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: media.coverImage?.extraLarge ?? '',
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
                textScaleFactor: ScaleSize.textScaleFactor(context),
              ),
              const SizedBox(height: 4),
              Text(
                media.type == Enum$MediaType.ANIME
                    ? seasonYearLabel(media.season, media.seasonYear) ?? ''
                    : '${media.startDate?.year ?? ''}',
                style: textTheme.titleMedium,
                textScaleFactor: ScaleSize.textScaleFactor(context),
              ),
              const SizedBox(height: 10),
              if (media.format != null)
                Chip(
                  label: Text(
                    mediaFormatLabel(media.format) ?? '',
                    textScaleFactor: ScaleSize.textScaleFactor(context),
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
