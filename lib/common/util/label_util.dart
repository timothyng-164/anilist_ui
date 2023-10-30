import 'dart:core';

import 'package:basic_utils/basic_utils.dart';
import 'package:intl/intl.dart';

import '../../graphql/anilist/schema.graphql.dart';

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

  static String? listStatusLabel(Enum$MediaListStatus? e) {
    if (e == null) return null;
    return _capitalizeAndReplace(toJson$Enum$MediaListStatus(e));
  }

  // TODO: refactor this ugly function
  static String? listStatusLabelByMedia(
    Enum$MediaListStatus? listStatus,
    Enum$MediaType? mediaType,
  ) {
    if (listStatus == null || listStatus == Enum$MediaListStatus.$unknown) {
      return null;
    }
    if (mediaType == null || mediaType == Enum$MediaType.$unknown) {
      return _capitalizeAndReplace(
        toJson$Enum$MediaListStatus(listStatus),
      );
    }
    if (mediaType == Enum$MediaType.ANIME) {
      switch (listStatus) {
        case Enum$MediaListStatus.CURRENT:
          return 'Watching';
        case Enum$MediaListStatus.PLANNING:
          return 'Planning';
        case Enum$MediaListStatus.COMPLETED:
          return 'Completed';
        case Enum$MediaListStatus.DROPPED:
          return 'Dropped';
        case Enum$MediaListStatus.PAUSED:
          return 'Paused';
        case Enum$MediaListStatus.REPEATING:
          return 'Rewatching';
        default:
          throw _listStatusError(listStatus, mediaType);
      }
    }
    if (mediaType == Enum$MediaType.MANGA) {
      switch (listStatus) {
        case Enum$MediaListStatus.CURRENT:
          return 'Reading';
        case Enum$MediaListStatus.PLANNING:
          return 'Planning';
        case Enum$MediaListStatus.COMPLETED:
          return 'Completed';
        case Enum$MediaListStatus.DROPPED:
          return 'Dropped';
        case Enum$MediaListStatus.PAUSED:
          return 'Paused';
        case Enum$MediaListStatus.REPEATING:
          return 'Rereading';
        default:
          throw _listStatusError(listStatus, mediaType);
      }
    }
    throw _listStatusError(listStatus, mediaType);
  }

  static String? mediaTypeLabel(Enum$MediaType? e) {
    if (e == null) return null;
    return _capitalizeAndReplace(toJson$Enum$MediaType(e));
  }

  static String? mediaSeasonLabel(Enum$MediaSeason? e) {
    if (e == null) return null;
    return _capitalizeAndReplace(toJson$Enum$MediaSeason(e));
  }

  static String? mediaSourceLabel(Enum$MediaSource? e) {
    if (e == null) return null;
    return _capitalizeAndReplace(toJson$Enum$MediaSource(e));
  }

  static String? mediaRelationLabel(Enum$MediaRelation? e) {
    if (e == null) return null;
    return _capitalizeAndReplace(toJson$Enum$MediaRelation(e));
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

UnimplementedError _listStatusError(
  Enum$MediaListStatus? listStatus,
  Enum$MediaType? mediaType,
) {
  return UnimplementedError(
      'List status label not implemented for label $listStatus, mediaType $mediaType');
}
