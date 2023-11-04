import 'package:anilist_ui/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../graphql/anilist/schema.graphql.dart';
import '../util/navigation_util.dart';
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
    return InkWell(
      onTap: () => NavigationUtil.navigateToMedia(mediaType, mediaId, context),
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
