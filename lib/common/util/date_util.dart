
import '../../graphql/anilist/query/schema.graphql.dart';

class DateUtil {
  static Enum$MediaSeason getSeason(DateTime dt) {
    int monthDay = dt.month * 100 + dt.day;
    if (monthDay <= 319) {
      return Enum$MediaSeason.WINTER;
    } else if (monthDay <= 620) {
      return Enum$MediaSeason.SPRING;
    } else if (monthDay <= 922) {
      return Enum$MediaSeason.SUMMER;
    } else if (monthDay <= 1221) {
      return Enum$MediaSeason.FALL;
    } else {
      return Enum$MediaSeason.WINTER;
    }
  }

  static Enum$MediaSeason getNextSeason(Enum$MediaSeason season) {
    switch (season) {
      case (Enum$MediaSeason.FALL):
        return Enum$MediaSeason.WINTER;
      case (Enum$MediaSeason.WINTER):
        return Enum$MediaSeason.SPRING;
      case (Enum$MediaSeason.SPRING):
        return Enum$MediaSeason.SUMMER;
      case (Enum$MediaSeason.SUMMER):
        return Enum$MediaSeason.FALL;
      default:
        return Enum$MediaSeason.$unknown;
    }
  }
}
