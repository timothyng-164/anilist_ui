import 'package:flutter/material.dart';

import '../../graphql/anilist/schema.graphql.dart';
import '../../routing/routes.dart';

class ListEntryButton extends StatelessWidget {
  const ListEntryButton({
    super.key,
    required this.mediaId,
    required this.mediaType,
    required this.entryExists,
  });

  final int mediaId;
  final Enum$MediaType? mediaType;
  final bool entryExists;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(entryExists ? Icons.playlist_add_check : Icons.playlist_add),
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
