import 'package:anilist_ui/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../graphql/anilist/query/schema.graphql.dart';
import 'image_card.dart';

class MediaCard extends StatelessWidget {
  const MediaCard({
    super.key,
    required this.mediaType,
    required this.mediaId,
    this.height,
    this.width,
    this.imageUrl,
    this.topContent,
    this.bottomContent,
  });

  final Enum$MediaType mediaType;
  final int mediaId;
  final double? height;
  final double? width;
  final String? imageUrl;
  final Widget? topContent;
  final Widget? bottomContent;

  @override
  Widget build(BuildContext context) {
    void navigateToMedia() {
      if (mediaType == Enum$MediaType.ANIME) {
        AnimeByIDRoute(mediaId).push(context);
      } else if (mediaType == Enum$MediaType.MANGA) {
        MangaByIDRoute(mediaId).push(context);
      } else {
        // TODO: display error in snackbar
        print("Unable to route media type: $mediaType");
      }
    }

    return InkWell(
      onTap: navigateToMedia,
      child: ImageCard(
        height: height,
        width: width,
        imageUrl: imageUrl,
        topContent: topContent,
        bottomContent: bottomContent,
      ),
    );
  }
}
