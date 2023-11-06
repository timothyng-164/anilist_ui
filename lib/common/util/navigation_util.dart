import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../graphql/anilist/schema.graphql.dart';
import '../../routing/routes.dart';

class NavigationUtil {
  static void navigateToMedia(
      Enum$MediaType? mediaType, int? mediaId, BuildContext context) {
    if (mediaId == null) {
      print('Cannot route media page with ID $mediaId');
      return;
    }
    if (mediaType == Enum$MediaType.ANIME) {
      AnimeByIDRoute(mediaId).push(context);
    } else if (mediaType == Enum$MediaType.MANGA) {
      MangaByIDRoute(mediaId).push(context);
    }
    print("Unable to route media type: $mediaType");
  }

  static Future<bool> launchExternalUrl(String link) async {
    try {
      Uri uri = Uri.parse(link);
      if (!await launchUrl(uri)) {
        throw Exception('Failed to launch external url: $link');
      }
      return true;
    } catch (e) {
      print('Unknown exception launching external url: $e');
      return false;
    }
  }
}
