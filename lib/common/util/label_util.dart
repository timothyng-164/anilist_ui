import 'dart:core';

import 'package:anilist_ui/graphql/anilist/schema.graphql.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:intl/intl.dart';

class LabelUtil {
  static String? mediaFormatLabel(Enum$MediaFormat? e) {
    switch (e) {
      case Enum$MediaFormat.TV:
        return 'TV';
      case Enum$MediaFormat.TV_SHORT:
        return 'TV Short';
      case Enum$MediaFormat.MOVIE:
        return 'Movie';
      case Enum$MediaFormat.SPECIAL:
        return 'Special';
      case Enum$MediaFormat.OVA:
        return 'OVA';
      case Enum$MediaFormat.ONA:
        return 'ONA';
      case Enum$MediaFormat.MUSIC:
        return 'Music';
      case Enum$MediaFormat.MANGA:
        return 'Manga';
      case Enum$MediaFormat.NOVEL:
        return 'Novel';
      case Enum$MediaFormat.ONE_SHOT:
        return 'One Shot';
      default:
        return null;
    }
  }

  static String? mediaStatusLabel(Enum$MediaStatus? e) {
    if (e == null) return null;
    return _capitalizeAndReplace(toJson$Enum$MediaStatus(e));
  }

  static String? mediaSeasonLabel(Enum$MediaSeason? e) {
    if (e == null) return null;
    return _capitalizeAndReplace(toJson$Enum$MediaSeason(e));
  }

  static String? mediaSourceLabel(Enum$MediaSource? e) {
    if (e == null) return null;
    return _capitalizeAndReplace(toJson$Enum$MediaSource(e));
  }

  static String? dateLabel(int? day, int? month, int? year) {
    if (year == null || month == null || day == null) return null;
    return DateFormat.yMMMd().format(DateTime(year, month, day));
  }

  static String? seasonYearLabel(Enum$MediaSeason? season, int? seasonYear) {
    if (season == null && seasonYear == null) return null;
    return '${mediaSeasonLabel(season) ?? ''} ${seasonYear ?? ''}';
  }
}

String _capitalizeAndReplace(String s) {
  return StringUtils.capitalize(
    s.replaceAll('_', ' '),
    allWords: true,
  );
}
