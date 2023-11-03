import 'package:flutter/material.dart';

import '../../graphql/anilist/schema.graphql.dart';
import '../../routing/routes.dart';

class ListEntryButton extends StatelessWidget {
  const ListEntryButton({
    super.key,
    required this.mediaId,
    required this.mediaType,
    this.icon,
    this.padding,
  });

  final int mediaId;
  final Enum$MediaType? mediaType;
  final Icon? icon;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon ?? const Icon(Icons.edit_note_sharp),
      padding: padding,
      constraints: const BoxConstraints(),
      onPressed: () {
        switch (mediaType) {
          case Enum$MediaType.ANIME:
            AnimeListEditorRoute(mediaId).push(context);
            break;
          case Enum$MediaType.MANGA:
            MangaListEditorRoute(mediaId).push(context);
            break;
          default:
            print('Unable to route list editor for $mediaType} $mediaId');
        }
      },
    );
  }
}
