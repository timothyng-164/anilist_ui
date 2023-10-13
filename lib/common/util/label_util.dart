import 'package:anilist_ui/graphql/anilist/schema.graphql.dart';

String? mediaFormatLabel(Enum$MediaFormat? e) {
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

String? mediaStatusLabel(Enum$MediaStatus? e) {
  switch (e) {
    case Enum$MediaStatus.FINISHED:
      return 'Finished';
    case Enum$MediaStatus.RELEASING:
      return 'Releasing';
    case Enum$MediaStatus.NOT_YET_RELEASED:
      return 'Not Yet Released';
    case Enum$MediaStatus.CANCELLED:
      return 'Cancelled';
    case Enum$MediaStatus.HIATUS:
      return 'Hiatus';
    default:
      return null;
  }
}
