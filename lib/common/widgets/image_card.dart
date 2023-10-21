import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    this.height,
    this.width,
    this.imageUrl,
    this.topLeftContent,
    this.bottomLeftContent,
  });

  final double? height;
  final double? width;
  final String? imageUrl;
  final Widget? topLeftContent;
  final Widget? bottomLeftContent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: LayoutBuilder(builder: (context, constraints) {
        return Card(
          child: Row(
            children: [
              if (imageUrl != null)
                _MediaImage(
                  imageUrl: imageUrl!,
                  maxHeight: constraints.maxHeight,
                ),
              _CardContent(
                topLeftContent: topLeftContent,
                bottomLeftContent: bottomLeftContent,
              ),
            ],
          ),
        );
      }),
    );
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({this.topLeftContent, this.bottomLeftContent});

  final Widget? topLeftContent;
  final Widget? bottomLeftContent;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (topLeftContent != null) topLeftContent!,
            const Spacer(),
            if (bottomLeftContent != null) bottomLeftContent!,
          ],
        ),
      ),
    );
  }
}

class _MediaImage extends StatelessWidget {
  const _MediaImage({required this.imageUrl, required this.maxHeight});

  final String imageUrl;
  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    Radius radius = const Radius.circular(8.0);
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: radius, bottomLeft: radius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: maxHeight,
        width: maxHeight * 2 / 3,
        fit: BoxFit.fill,
      ),
    );
  }
}
