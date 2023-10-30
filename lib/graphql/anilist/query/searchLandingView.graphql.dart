import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$media {
  Fragment$media({
    required this.id,
    this.title,
    this.coverImage,
    this.nextAiringEpisode,
    this.$__typename = 'Media',
  });

  factory Fragment$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$nextAiringEpisode = json['nextAiringEpisode'];
    final l$$__typename = json['__typename'];
    return Fragment$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Fragment$media$title.fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      nextAiringEpisode: l$nextAiringEpisode == null
          ? null
          : Fragment$media$nextAiringEpisode.fromJson(
              (l$nextAiringEpisode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$media$title? title;

  final Fragment$media$coverImage? coverImage;

  final Fragment$media$nextAiringEpisode? nextAiringEpisode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$title = title;
    resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    resultData['coverImage'] = l$coverImage?.toJson();
    final l$nextAiringEpisode = nextAiringEpisode;
    resultData['nextAiringEpisode'] = l$nextAiringEpisode?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$nextAiringEpisode = nextAiringEpisode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$coverImage,
      l$nextAiringEpisode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$media || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$nextAiringEpisode = nextAiringEpisode;
    final lOther$nextAiringEpisode = other.nextAiringEpisode;
    if (l$nextAiringEpisode != lOther$nextAiringEpisode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$media on Fragment$media {
  CopyWith$Fragment$media<Fragment$media> get copyWith =>
      CopyWith$Fragment$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$media<TRes> {
  factory CopyWith$Fragment$media(
    Fragment$media instance,
    TRes Function(Fragment$media) then,
  ) = _CopyWithImpl$Fragment$media;

  factory CopyWith$Fragment$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$media;

  TRes call({
    int? id,
    Fragment$media$title? title,
    Fragment$media$coverImage? coverImage,
    Fragment$media$nextAiringEpisode? nextAiringEpisode,
    String? $__typename,
  });
  CopyWith$Fragment$media$title<TRes> get title;
  CopyWith$Fragment$media$coverImage<TRes> get coverImage;
  CopyWith$Fragment$media$nextAiringEpisode<TRes> get nextAiringEpisode;
}

class _CopyWithImpl$Fragment$media<TRes>
    implements CopyWith$Fragment$media<TRes> {
  _CopyWithImpl$Fragment$media(
    this._instance,
    this._then,
  );

  final Fragment$media _instance;

  final TRes Function(Fragment$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? nextAiringEpisode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$media$coverImage?),
        nextAiringEpisode: nextAiringEpisode == _undefined
            ? _instance.nextAiringEpisode
            : (nextAiringEpisode as Fragment$media$nextAiringEpisode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$media$title.stub(_then(_instance))
        : CopyWith$Fragment$media$title(local$title, (e) => call(title: e));
  }

  @override
  CopyWith$Fragment$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$media$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  @override
  CopyWith$Fragment$media$nextAiringEpisode<TRes> get nextAiringEpisode {
    final local$nextAiringEpisode = _instance.nextAiringEpisode;
    return local$nextAiringEpisode == null
        ? CopyWith$Fragment$media$nextAiringEpisode.stub(_then(_instance))
        : CopyWith$Fragment$media$nextAiringEpisode(
            local$nextAiringEpisode, (e) => call(nextAiringEpisode: e));
  }
}

class _CopyWithStubImpl$Fragment$media<TRes>
    implements CopyWith$Fragment$media<TRes> {
  _CopyWithStubImpl$Fragment$media(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    Fragment$media$title? title,
    Fragment$media$coverImage? coverImage,
    Fragment$media$nextAiringEpisode? nextAiringEpisode,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$media$title<TRes> get title =>
      CopyWith$Fragment$media$title.stub(_res);

  @override
  CopyWith$Fragment$media$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$media$coverImage.stub(_res);

  @override
  CopyWith$Fragment$media$nextAiringEpisode<TRes> get nextAiringEpisode =>
      CopyWith$Fragment$media$nextAiringEpisode.stub(_res);
}

const fragmentDefinitionmedia = FragmentDefinitionNode(
  name: NameNode(value: 'media'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'userPreferred'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'coverImage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'large'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'medium'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'color'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'nextAiringEpisode'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'episode'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'timeUntilAiring'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentmedia = DocumentNode(definitions: [
  fragmentDefinitionmedia,
]);

extension ClientExtension$Fragment$media on graphql.GraphQLClient {
  void writeFragment$media({
    required Fragment$media data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'media',
            document: documentNodeFragmentmedia,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$media? readFragment$media({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'media',
          document: documentNodeFragmentmedia,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$media.fromJson(result);
  }
}

class Fragment$media$title {
  Fragment$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$media$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$media$title || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$media$title on Fragment$media$title {
  CopyWith$Fragment$media$title<Fragment$media$title> get copyWith =>
      CopyWith$Fragment$media$title(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$media$title<TRes> {
  factory CopyWith$Fragment$media$title(
    Fragment$media$title instance,
    TRes Function(Fragment$media$title) then,
  ) = _CopyWithImpl$Fragment$media$title;

  factory CopyWith$Fragment$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$media$title<TRes>
    implements CopyWith$Fragment$media$title<TRes> {
  _CopyWithImpl$Fragment$media$title(
    this._instance,
    this._then,
  );

  final Fragment$media$title _instance;

  final TRes Function(Fragment$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$media$title<TRes>
    implements CopyWith$Fragment$media$title<TRes> {
  _CopyWithStubImpl$Fragment$media$title(this._res);

  final TRes _res;

  @override
  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$media$coverImage {
  Fragment$media$coverImage({
    this.large,
    this.medium,
    this.color,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$media$coverImage.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$media$coverImage(
      large: (l$large as String?),
      medium: (l$medium as String?),
      color: (l$color as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String? medium;

  final String? color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$large = large;
    resultData['large'] = l$large;
    final l$medium = medium;
    resultData['medium'] = l$medium;
    final l$color = color;
    resultData['color'] = l$color;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$medium = medium;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$medium,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$media$coverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$media$coverImage
    on Fragment$media$coverImage {
  CopyWith$Fragment$media$coverImage<Fragment$media$coverImage> get copyWith =>
      CopyWith$Fragment$media$coverImage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$media$coverImage<TRes> {
  factory CopyWith$Fragment$media$coverImage(
    Fragment$media$coverImage instance,
    TRes Function(Fragment$media$coverImage) then,
  ) = _CopyWithImpl$Fragment$media$coverImage;

  factory CopyWith$Fragment$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$media$coverImage;

  TRes call({
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$media$coverImage<TRes>
    implements CopyWith$Fragment$media$coverImage<TRes> {
  _CopyWithImpl$Fragment$media$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$media$coverImage _instance;

  final TRes Function(Fragment$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$media$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        color: color == _undefined ? _instance.color : (color as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$media$coverImage<TRes>
    implements CopyWith$Fragment$media$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$media$coverImage(this._res);

  final TRes _res;

  @override
  call({
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$media$nextAiringEpisode {
  Fragment$media$nextAiringEpisode({
    required this.episode,
    required this.timeUntilAiring,
    this.$__typename = 'AiringSchedule',
  });

  factory Fragment$media$nextAiringEpisode.fromJson(Map<String, dynamic> json) {
    final l$episode = json['episode'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$$__typename = json['__typename'];
    return Fragment$media$nextAiringEpisode(
      episode: (l$episode as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int episode;

  final int timeUntilAiring;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$episode = episode;
    resultData['episode'] = l$episode;
    final l$timeUntilAiring = timeUntilAiring;
    resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$episode = episode;
    final l$timeUntilAiring = timeUntilAiring;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$episode,
      l$timeUntilAiring,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$media$nextAiringEpisode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$media$nextAiringEpisode
    on Fragment$media$nextAiringEpisode {
  CopyWith$Fragment$media$nextAiringEpisode<Fragment$media$nextAiringEpisode>
      get copyWith => CopyWith$Fragment$media$nextAiringEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$media$nextAiringEpisode<TRes> {
  factory CopyWith$Fragment$media$nextAiringEpisode(
    Fragment$media$nextAiringEpisode instance,
    TRes Function(Fragment$media$nextAiringEpisode) then,
  ) = _CopyWithImpl$Fragment$media$nextAiringEpisode;

  factory CopyWith$Fragment$media$nextAiringEpisode.stub(TRes res) =
      _CopyWithStubImpl$Fragment$media$nextAiringEpisode;

  TRes call({
    int? episode,
    int? timeUntilAiring,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$media$nextAiringEpisode<TRes>
    implements CopyWith$Fragment$media$nextAiringEpisode<TRes> {
  _CopyWithImpl$Fragment$media$nextAiringEpisode(
    this._instance,
    this._then,
  );

  final Fragment$media$nextAiringEpisode _instance;

  final TRes Function(Fragment$media$nextAiringEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? episode = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$media$nextAiringEpisode(
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$media$nextAiringEpisode<TRes>
    implements CopyWith$Fragment$media$nextAiringEpisode<TRes> {
  _CopyWithStubImpl$Fragment$media$nextAiringEpisode(this._res);

  final TRes _res;

  @override
  call({
    int? episode,
    int? timeUntilAiring,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$SearchLandingPage {
  factory Variables$Query$SearchLandingPage({
    int? perPage,
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  }) =>
      Variables$Query$SearchLandingPage._({
        if (perPage != null) r'perPage': perPage,
        if (season != null) r'season': season,
        if (seasonYear != null) r'seasonYear': seasonYear,
        if (nextSeason != null) r'nextSeason': nextSeason,
        if (nextYear != null) r'nextYear': nextYear,
      });

  Variables$Query$SearchLandingPage._(this._$data);

  factory Variables$Query$SearchLandingPage.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('season')) {
      final l$season = data['season'];
      result$data['season'] = l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String));
    }
    if (data.containsKey('seasonYear')) {
      final l$seasonYear = data['seasonYear'];
      result$data['seasonYear'] = (l$seasonYear as int?);
    }
    if (data.containsKey('nextSeason')) {
      final l$nextSeason = data['nextSeason'];
      result$data['nextSeason'] = l$nextSeason == null
          ? null
          : fromJson$Enum$MediaSeason((l$nextSeason as String));
    }
    if (data.containsKey('nextYear')) {
      final l$nextYear = data['nextYear'];
      result$data['nextYear'] = (l$nextYear as int?);
    }
    return Variables$Query$SearchLandingPage._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get perPage => (_$data['perPage'] as int?);

  Enum$MediaSeason? get season => (_$data['season'] as Enum$MediaSeason?);

  int? get seasonYear => (_$data['seasonYear'] as int?);

  Enum$MediaSeason? get nextSeason =>
      (_$data['nextSeason'] as Enum$MediaSeason?);

  int? get nextYear => (_$data['nextYear'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    if (_$data.containsKey('season')) {
      final l$season = season;
      result$data['season'] =
          l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    }
    if (_$data.containsKey('seasonYear')) {
      final l$seasonYear = seasonYear;
      result$data['seasonYear'] = l$seasonYear;
    }
    if (_$data.containsKey('nextSeason')) {
      final l$nextSeason = nextSeason;
      result$data['nextSeason'] =
          l$nextSeason == null ? null : toJson$Enum$MediaSeason(l$nextSeason);
    }
    if (_$data.containsKey('nextYear')) {
      final l$nextYear = nextYear;
      result$data['nextYear'] = l$nextYear;
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchLandingPage<Variables$Query$SearchLandingPage>
      get copyWith => CopyWith$Variables$Query$SearchLandingPage(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchLandingPage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (_$data.containsKey('perPage') != other._$data.containsKey('perPage')) {
      return false;
    }
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (_$data.containsKey('season') != other._$data.containsKey('season')) {
      return false;
    }
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (_$data.containsKey('seasonYear') !=
        other._$data.containsKey('seasonYear')) {
      return false;
    }
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$nextSeason = nextSeason;
    final lOther$nextSeason = other.nextSeason;
    if (_$data.containsKey('nextSeason') !=
        other._$data.containsKey('nextSeason')) {
      return false;
    }
    if (l$nextSeason != lOther$nextSeason) {
      return false;
    }
    final l$nextYear = nextYear;
    final lOther$nextYear = other.nextYear;
    if (_$data.containsKey('nextYear') !=
        other._$data.containsKey('nextYear')) {
      return false;
    }
    if (l$nextYear != lOther$nextYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$perPage = perPage;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$nextSeason = nextSeason;
    final l$nextYear = nextYear;
    return Object.hashAll([
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('season') ? l$season : const {},
      _$data.containsKey('seasonYear') ? l$seasonYear : const {},
      _$data.containsKey('nextSeason') ? l$nextSeason : const {},
      _$data.containsKey('nextYear') ? l$nextYear : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchLandingPage<TRes> {
  factory CopyWith$Variables$Query$SearchLandingPage(
    Variables$Query$SearchLandingPage instance,
    TRes Function(Variables$Query$SearchLandingPage) then,
  ) = _CopyWithImpl$Variables$Query$SearchLandingPage;

  factory CopyWith$Variables$Query$SearchLandingPage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchLandingPage;

  TRes call({
    int? perPage,
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  });
}

class _CopyWithImpl$Variables$Query$SearchLandingPage<TRes>
    implements CopyWith$Variables$Query$SearchLandingPage<TRes> {
  _CopyWithImpl$Variables$Query$SearchLandingPage(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchLandingPage _instance;

  final TRes Function(Variables$Query$SearchLandingPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? perPage = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? nextSeason = _undefined,
    Object? nextYear = _undefined,
  }) =>
      _then(Variables$Query$SearchLandingPage._({
        ..._instance._$data,
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (season != _undefined) 'season': (season as Enum$MediaSeason?),
        if (seasonYear != _undefined) 'seasonYear': (seasonYear as int?),
        if (nextSeason != _undefined)
          'nextSeason': (nextSeason as Enum$MediaSeason?),
        if (nextYear != _undefined) 'nextYear': (nextYear as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchLandingPage<TRes>
    implements CopyWith$Variables$Query$SearchLandingPage<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchLandingPage(this._res);

  final TRes _res;

  @override
  call({
    int? perPage,
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  }) =>
      _res;
}

class Query$SearchLandingPage {
  Query$SearchLandingPage({
    this.trending,
    this.season,
    this.nextSeason,
    this.updated,
    this.newlyAdded,
    this.popular,
    this.top,
    this.$__typename = 'Query',
  });

  factory Query$SearchLandingPage.fromJson(Map<String, dynamic> json) {
    final l$trending = json['trending'];
    final l$season = json['season'];
    final l$nextSeason = json['nextSeason'];
    final l$updated = json['updated'];
    final l$newlyAdded = json['newlyAdded'];
    final l$popular = json['popular'];
    final l$top = json['top'];
    final l$$__typename = json['__typename'];
    return Query$SearchLandingPage(
      trending: l$trending == null
          ? null
          : Query$SearchLandingPage$trending.fromJson(
              (l$trending as Map<String, dynamic>)),
      season: l$season == null
          ? null
          : Query$SearchLandingPage$season.fromJson(
              (l$season as Map<String, dynamic>)),
      nextSeason: l$nextSeason == null
          ? null
          : Query$SearchLandingPage$nextSeason.fromJson(
              (l$nextSeason as Map<String, dynamic>)),
      updated: l$updated == null
          ? null
          : Query$SearchLandingPage$updated.fromJson(
              (l$updated as Map<String, dynamic>)),
      newlyAdded: l$newlyAdded == null
          ? null
          : Query$SearchLandingPage$newlyAdded.fromJson(
              (l$newlyAdded as Map<String, dynamic>)),
      popular: l$popular == null
          ? null
          : Query$SearchLandingPage$popular.fromJson(
              (l$popular as Map<String, dynamic>)),
      top: l$top == null
          ? null
          : Query$SearchLandingPage$top.fromJson(
              (l$top as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchLandingPage$trending? trending;

  final Query$SearchLandingPage$season? season;

  final Query$SearchLandingPage$nextSeason? nextSeason;

  final Query$SearchLandingPage$updated? updated;

  final Query$SearchLandingPage$newlyAdded? newlyAdded;

  final Query$SearchLandingPage$popular? popular;

  final Query$SearchLandingPage$top? top;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$trending = trending;
    resultData['trending'] = l$trending?.toJson();
    final l$season = season;
    resultData['season'] = l$season?.toJson();
    final l$nextSeason = nextSeason;
    resultData['nextSeason'] = l$nextSeason?.toJson();
    final l$updated = updated;
    resultData['updated'] = l$updated?.toJson();
    final l$newlyAdded = newlyAdded;
    resultData['newlyAdded'] = l$newlyAdded?.toJson();
    final l$popular = popular;
    resultData['popular'] = l$popular?.toJson();
    final l$top = top;
    resultData['top'] = l$top?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$trending = trending;
    final l$season = season;
    final l$nextSeason = nextSeason;
    final l$updated = updated;
    final l$newlyAdded = newlyAdded;
    final l$popular = popular;
    final l$top = top;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trending,
      l$season,
      l$nextSeason,
      l$updated,
      l$newlyAdded,
      l$popular,
      l$top,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLandingPage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$trending = trending;
    final lOther$trending = other.trending;
    if (l$trending != lOther$trending) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$nextSeason = nextSeason;
    final lOther$nextSeason = other.nextSeason;
    if (l$nextSeason != lOther$nextSeason) {
      return false;
    }
    final l$updated = updated;
    final lOther$updated = other.updated;
    if (l$updated != lOther$updated) {
      return false;
    }
    final l$newlyAdded = newlyAdded;
    final lOther$newlyAdded = other.newlyAdded;
    if (l$newlyAdded != lOther$newlyAdded) {
      return false;
    }
    final l$popular = popular;
    final lOther$popular = other.popular;
    if (l$popular != lOther$popular) {
      return false;
    }
    final l$top = top;
    final lOther$top = other.top;
    if (l$top != lOther$top) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchLandingPage on Query$SearchLandingPage {
  CopyWith$Query$SearchLandingPage<Query$SearchLandingPage> get copyWith =>
      CopyWith$Query$SearchLandingPage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchLandingPage<TRes> {
  factory CopyWith$Query$SearchLandingPage(
    Query$SearchLandingPage instance,
    TRes Function(Query$SearchLandingPage) then,
  ) = _CopyWithImpl$Query$SearchLandingPage;

  factory CopyWith$Query$SearchLandingPage.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLandingPage;

  TRes call({
    Query$SearchLandingPage$trending? trending,
    Query$SearchLandingPage$season? season,
    Query$SearchLandingPage$nextSeason? nextSeason,
    Query$SearchLandingPage$updated? updated,
    Query$SearchLandingPage$newlyAdded? newlyAdded,
    Query$SearchLandingPage$popular? popular,
    Query$SearchLandingPage$top? top,
    String? $__typename,
  });
  CopyWith$Query$SearchLandingPage$trending<TRes> get trending;
  CopyWith$Query$SearchLandingPage$season<TRes> get season;
  CopyWith$Query$SearchLandingPage$nextSeason<TRes> get nextSeason;
  CopyWith$Query$SearchLandingPage$updated<TRes> get updated;
  CopyWith$Query$SearchLandingPage$newlyAdded<TRes> get newlyAdded;
  CopyWith$Query$SearchLandingPage$popular<TRes> get popular;
  CopyWith$Query$SearchLandingPage$top<TRes> get top;
}

class _CopyWithImpl$Query$SearchLandingPage<TRes>
    implements CopyWith$Query$SearchLandingPage<TRes> {
  _CopyWithImpl$Query$SearchLandingPage(
    this._instance,
    this._then,
  );

  final Query$SearchLandingPage _instance;

  final TRes Function(Query$SearchLandingPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? trending = _undefined,
    Object? season = _undefined,
    Object? nextSeason = _undefined,
    Object? updated = _undefined,
    Object? newlyAdded = _undefined,
    Object? popular = _undefined,
    Object? top = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchLandingPage(
        trending: trending == _undefined
            ? _instance.trending
            : (trending as Query$SearchLandingPage$trending?),
        season: season == _undefined
            ? _instance.season
            : (season as Query$SearchLandingPage$season?),
        nextSeason: nextSeason == _undefined
            ? _instance.nextSeason
            : (nextSeason as Query$SearchLandingPage$nextSeason?),
        updated: updated == _undefined
            ? _instance.updated
            : (updated as Query$SearchLandingPage$updated?),
        newlyAdded: newlyAdded == _undefined
            ? _instance.newlyAdded
            : (newlyAdded as Query$SearchLandingPage$newlyAdded?),
        popular: popular == _undefined
            ? _instance.popular
            : (popular as Query$SearchLandingPage$popular?),
        top: top == _undefined
            ? _instance.top
            : (top as Query$SearchLandingPage$top?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$SearchLandingPage$trending<TRes> get trending {
    final local$trending = _instance.trending;
    return local$trending == null
        ? CopyWith$Query$SearchLandingPage$trending.stub(_then(_instance))
        : CopyWith$Query$SearchLandingPage$trending(
            local$trending, (e) => call(trending: e));
  }

  @override
  CopyWith$Query$SearchLandingPage$season<TRes> get season {
    final local$season = _instance.season;
    return local$season == null
        ? CopyWith$Query$SearchLandingPage$season.stub(_then(_instance))
        : CopyWith$Query$SearchLandingPage$season(
            local$season, (e) => call(season: e));
  }

  @override
  CopyWith$Query$SearchLandingPage$nextSeason<TRes> get nextSeason {
    final local$nextSeason = _instance.nextSeason;
    return local$nextSeason == null
        ? CopyWith$Query$SearchLandingPage$nextSeason.stub(_then(_instance))
        : CopyWith$Query$SearchLandingPage$nextSeason(
            local$nextSeason, (e) => call(nextSeason: e));
  }

  @override
  CopyWith$Query$SearchLandingPage$updated<TRes> get updated {
    final local$updated = _instance.updated;
    return local$updated == null
        ? CopyWith$Query$SearchLandingPage$updated.stub(_then(_instance))
        : CopyWith$Query$SearchLandingPage$updated(
            local$updated, (e) => call(updated: e));
  }

  @override
  CopyWith$Query$SearchLandingPage$newlyAdded<TRes> get newlyAdded {
    final local$newlyAdded = _instance.newlyAdded;
    return local$newlyAdded == null
        ? CopyWith$Query$SearchLandingPage$newlyAdded.stub(_then(_instance))
        : CopyWith$Query$SearchLandingPage$newlyAdded(
            local$newlyAdded, (e) => call(newlyAdded: e));
  }

  @override
  CopyWith$Query$SearchLandingPage$popular<TRes> get popular {
    final local$popular = _instance.popular;
    return local$popular == null
        ? CopyWith$Query$SearchLandingPage$popular.stub(_then(_instance))
        : CopyWith$Query$SearchLandingPage$popular(
            local$popular, (e) => call(popular: e));
  }

  @override
  CopyWith$Query$SearchLandingPage$top<TRes> get top {
    final local$top = _instance.top;
    return local$top == null
        ? CopyWith$Query$SearchLandingPage$top.stub(_then(_instance))
        : CopyWith$Query$SearchLandingPage$top(local$top, (e) => call(top: e));
  }
}

class _CopyWithStubImpl$Query$SearchLandingPage<TRes>
    implements CopyWith$Query$SearchLandingPage<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage(this._res);

  final TRes _res;

  @override
  call({
    Query$SearchLandingPage$trending? trending,
    Query$SearchLandingPage$season? season,
    Query$SearchLandingPage$nextSeason? nextSeason,
    Query$SearchLandingPage$updated? updated,
    Query$SearchLandingPage$newlyAdded? newlyAdded,
    Query$SearchLandingPage$popular? popular,
    Query$SearchLandingPage$top? top,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$SearchLandingPage$trending<TRes> get trending =>
      CopyWith$Query$SearchLandingPage$trending.stub(_res);

  @override
  CopyWith$Query$SearchLandingPage$season<TRes> get season =>
      CopyWith$Query$SearchLandingPage$season.stub(_res);

  @override
  CopyWith$Query$SearchLandingPage$nextSeason<TRes> get nextSeason =>
      CopyWith$Query$SearchLandingPage$nextSeason.stub(_res);

  @override
  CopyWith$Query$SearchLandingPage$updated<TRes> get updated =>
      CopyWith$Query$SearchLandingPage$updated.stub(_res);

  @override
  CopyWith$Query$SearchLandingPage$newlyAdded<TRes> get newlyAdded =>
      CopyWith$Query$SearchLandingPage$newlyAdded.stub(_res);

  @override
  CopyWith$Query$SearchLandingPage$popular<TRes> get popular =>
      CopyWith$Query$SearchLandingPage$popular.stub(_res);

  @override
  CopyWith$Query$SearchLandingPage$top<TRes> get top =>
      CopyWith$Query$SearchLandingPage$top.stub(_res);
}

const documentNodeQuerySearchLandingPage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchLandingPage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'season')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaSeason'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'seasonYear')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nextSeason')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaSeason'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nextYear')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'trending'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'TRENDING_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'media'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'season'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'season')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'seasonYear')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'media'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'nextSeason'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'nextSeason')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'nextYear')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'media'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'updated'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'UPDATED_AT_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'media'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'newlyAdded'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'media'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'popular'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'media'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'top'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'SCORE_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'media'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionmedia,
]);
Query$SearchLandingPage _parserFn$Query$SearchLandingPage(
        Map<String, dynamic> data) =>
    Query$SearchLandingPage.fromJson(data);
typedef OnQueryComplete$Query$SearchLandingPage = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SearchLandingPage?,
);

class Options$Query$SearchLandingPage
    extends graphql.QueryOptions<Query$SearchLandingPage> {
  Options$Query$SearchLandingPage({
    String? operationName,
    Variables$Query$SearchLandingPage? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchLandingPage? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SearchLandingPage? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$SearchLandingPage(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearchLandingPage,
          parserFn: _parserFn$Query$SearchLandingPage,
        );

  final OnQueryComplete$Query$SearchLandingPage? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SearchLandingPage
    extends graphql.WatchQueryOptions<Query$SearchLandingPage> {
  WatchOptions$Query$SearchLandingPage({
    String? operationName,
    Variables$Query$SearchLandingPage? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchLandingPage? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerySearchLandingPage,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchLandingPage,
        );
}

class FetchMoreOptions$Query$SearchLandingPage
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchLandingPage({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$SearchLandingPage? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySearchLandingPage,
        );
}

extension ClientExtension$Query$SearchLandingPage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchLandingPage>> query$SearchLandingPage(
          [Options$Query$SearchLandingPage? options]) async =>
      await query(options ?? Options$Query$SearchLandingPage());
  graphql.ObservableQuery<Query$SearchLandingPage> watchQuery$SearchLandingPage(
          [WatchOptions$Query$SearchLandingPage? options]) =>
      watchQuery(options ?? WatchOptions$Query$SearchLandingPage());
  void writeQuery$SearchLandingPage({
    required Query$SearchLandingPage data,
    Variables$Query$SearchLandingPage? variables,
    bool broadcast = true,
  }) =>
      writeQuery(
        graphql.Request(
          operation:
              const graphql.Operation(document: documentNodeQuerySearchLandingPage),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchLandingPage? readQuery$SearchLandingPage({
    Variables$Query$SearchLandingPage? variables,
    bool optimistic = true,
  }) {
    final result = readQuery(
      graphql.Request(
        operation:
            const graphql.Operation(document: documentNodeQuerySearchLandingPage),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchLandingPage.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchLandingPage>
    useQuery$SearchLandingPage([Options$Query$SearchLandingPage? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$SearchLandingPage());
graphql.ObservableQuery<Query$SearchLandingPage>
    useWatchQuery$SearchLandingPage(
            [WatchOptions$Query$SearchLandingPage? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$SearchLandingPage());

class Query$SearchLandingPage$Widget
    extends graphql_flutter.Query<Query$SearchLandingPage> {
  Query$SearchLandingPage$Widget({
    widgets.Key? key,
    Options$Query$SearchLandingPage? options,
    required graphql_flutter.QueryBuilder<Query$SearchLandingPage> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$SearchLandingPage(),
          builder: builder,
        );
}

class Query$SearchLandingPage$trending {
  Query$SearchLandingPage$trending({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$SearchLandingPage$trending.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$SearchLandingPage$trending(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$media = media;
    resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLandingPage$trending ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchLandingPage$trending
    on Query$SearchLandingPage$trending {
  CopyWith$Query$SearchLandingPage$trending<Query$SearchLandingPage$trending>
      get copyWith => CopyWith$Query$SearchLandingPage$trending(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchLandingPage$trending<TRes> {
  factory CopyWith$Query$SearchLandingPage$trending(
    Query$SearchLandingPage$trending instance,
    TRes Function(Query$SearchLandingPage$trending) then,
  ) = _CopyWithImpl$Query$SearchLandingPage$trending;

  factory CopyWith$Query$SearchLandingPage$trending.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLandingPage$trending;

  TRes call({
    List<Fragment$media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$media?>? Function(
              Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
          fn);
}

class _CopyWithImpl$Query$SearchLandingPage$trending<TRes>
    implements CopyWith$Query$SearchLandingPage$trending<TRes> {
  _CopyWithImpl$Query$SearchLandingPage$trending(
    this._instance,
    this._then,
  );

  final Query$SearchLandingPage$trending _instance;

  final TRes Function(Query$SearchLandingPage$trending) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchLandingPage$trending(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              fn) =>
      call(
          media: fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$trending<TRes>
    implements CopyWith$Query$SearchLandingPage$trending<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$trending(this._res);

  final TRes _res;

  @override
  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  @override
  media(fn) => _res;
}

class Query$SearchLandingPage$season {
  Query$SearchLandingPage$season({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$SearchLandingPage$season.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$SearchLandingPage$season(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$media = media;
    resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLandingPage$season ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchLandingPage$season
    on Query$SearchLandingPage$season {
  CopyWith$Query$SearchLandingPage$season<Query$SearchLandingPage$season>
      get copyWith => CopyWith$Query$SearchLandingPage$season(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchLandingPage$season<TRes> {
  factory CopyWith$Query$SearchLandingPage$season(
    Query$SearchLandingPage$season instance,
    TRes Function(Query$SearchLandingPage$season) then,
  ) = _CopyWithImpl$Query$SearchLandingPage$season;

  factory CopyWith$Query$SearchLandingPage$season.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLandingPage$season;

  TRes call({
    List<Fragment$media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$media?>? Function(
              Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
          fn);
}

class _CopyWithImpl$Query$SearchLandingPage$season<TRes>
    implements CopyWith$Query$SearchLandingPage$season<TRes> {
  _CopyWithImpl$Query$SearchLandingPage$season(
    this._instance,
    this._then,
  );

  final Query$SearchLandingPage$season _instance;

  final TRes Function(Query$SearchLandingPage$season) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchLandingPage$season(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              fn) =>
      call(
          media: fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$season<TRes>
    implements CopyWith$Query$SearchLandingPage$season<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$season(this._res);

  final TRes _res;

  @override
  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  @override
  media(fn) => _res;
}

class Query$SearchLandingPage$nextSeason {
  Query$SearchLandingPage$nextSeason({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$SearchLandingPage$nextSeason.fromJson(
      Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$SearchLandingPage$nextSeason(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$media = media;
    resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLandingPage$nextSeason ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchLandingPage$nextSeason
    on Query$SearchLandingPage$nextSeason {
  CopyWith$Query$SearchLandingPage$nextSeason<
          Query$SearchLandingPage$nextSeason>
      get copyWith => CopyWith$Query$SearchLandingPage$nextSeason(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchLandingPage$nextSeason<TRes> {
  factory CopyWith$Query$SearchLandingPage$nextSeason(
    Query$SearchLandingPage$nextSeason instance,
    TRes Function(Query$SearchLandingPage$nextSeason) then,
  ) = _CopyWithImpl$Query$SearchLandingPage$nextSeason;

  factory CopyWith$Query$SearchLandingPage$nextSeason.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLandingPage$nextSeason;

  TRes call({
    List<Fragment$media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$media?>? Function(
              Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
          fn);
}

class _CopyWithImpl$Query$SearchLandingPage$nextSeason<TRes>
    implements CopyWith$Query$SearchLandingPage$nextSeason<TRes> {
  _CopyWithImpl$Query$SearchLandingPage$nextSeason(
    this._instance,
    this._then,
  );

  final Query$SearchLandingPage$nextSeason _instance;

  final TRes Function(Query$SearchLandingPage$nextSeason) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchLandingPage$nextSeason(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              fn) =>
      call(
          media: fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$nextSeason<TRes>
    implements CopyWith$Query$SearchLandingPage$nextSeason<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$nextSeason(this._res);

  final TRes _res;

  @override
  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  @override
  media(fn) => _res;
}

class Query$SearchLandingPage$updated {
  Query$SearchLandingPage$updated({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$SearchLandingPage$updated.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$SearchLandingPage$updated(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$media = media;
    resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLandingPage$updated ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchLandingPage$updated
    on Query$SearchLandingPage$updated {
  CopyWith$Query$SearchLandingPage$updated<Query$SearchLandingPage$updated>
      get copyWith => CopyWith$Query$SearchLandingPage$updated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchLandingPage$updated<TRes> {
  factory CopyWith$Query$SearchLandingPage$updated(
    Query$SearchLandingPage$updated instance,
    TRes Function(Query$SearchLandingPage$updated) then,
  ) = _CopyWithImpl$Query$SearchLandingPage$updated;

  factory CopyWith$Query$SearchLandingPage$updated.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLandingPage$updated;

  TRes call({
    List<Fragment$media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$media?>? Function(
              Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
          fn);
}

class _CopyWithImpl$Query$SearchLandingPage$updated<TRes>
    implements CopyWith$Query$SearchLandingPage$updated<TRes> {
  _CopyWithImpl$Query$SearchLandingPage$updated(
    this._instance,
    this._then,
  );

  final Query$SearchLandingPage$updated _instance;

  final TRes Function(Query$SearchLandingPage$updated) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchLandingPage$updated(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              fn) =>
      call(
          media: fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$updated<TRes>
    implements CopyWith$Query$SearchLandingPage$updated<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$updated(this._res);

  final TRes _res;

  @override
  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  @override
  media(fn) => _res;
}

class Query$SearchLandingPage$newlyAdded {
  Query$SearchLandingPage$newlyAdded({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$SearchLandingPage$newlyAdded.fromJson(
      Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$SearchLandingPage$newlyAdded(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$media = media;
    resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLandingPage$newlyAdded ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchLandingPage$newlyAdded
    on Query$SearchLandingPage$newlyAdded {
  CopyWith$Query$SearchLandingPage$newlyAdded<
          Query$SearchLandingPage$newlyAdded>
      get copyWith => CopyWith$Query$SearchLandingPage$newlyAdded(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchLandingPage$newlyAdded<TRes> {
  factory CopyWith$Query$SearchLandingPage$newlyAdded(
    Query$SearchLandingPage$newlyAdded instance,
    TRes Function(Query$SearchLandingPage$newlyAdded) then,
  ) = _CopyWithImpl$Query$SearchLandingPage$newlyAdded;

  factory CopyWith$Query$SearchLandingPage$newlyAdded.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLandingPage$newlyAdded;

  TRes call({
    List<Fragment$media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$media?>? Function(
              Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
          fn);
}

class _CopyWithImpl$Query$SearchLandingPage$newlyAdded<TRes>
    implements CopyWith$Query$SearchLandingPage$newlyAdded<TRes> {
  _CopyWithImpl$Query$SearchLandingPage$newlyAdded(
    this._instance,
    this._then,
  );

  final Query$SearchLandingPage$newlyAdded _instance;

  final TRes Function(Query$SearchLandingPage$newlyAdded) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchLandingPage$newlyAdded(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              fn) =>
      call(
          media: fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$newlyAdded<TRes>
    implements CopyWith$Query$SearchLandingPage$newlyAdded<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$newlyAdded(this._res);

  final TRes _res;

  @override
  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  @override
  media(fn) => _res;
}

class Query$SearchLandingPage$popular {
  Query$SearchLandingPage$popular({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$SearchLandingPage$popular.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$SearchLandingPage$popular(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$media = media;
    resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLandingPage$popular ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchLandingPage$popular
    on Query$SearchLandingPage$popular {
  CopyWith$Query$SearchLandingPage$popular<Query$SearchLandingPage$popular>
      get copyWith => CopyWith$Query$SearchLandingPage$popular(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchLandingPage$popular<TRes> {
  factory CopyWith$Query$SearchLandingPage$popular(
    Query$SearchLandingPage$popular instance,
    TRes Function(Query$SearchLandingPage$popular) then,
  ) = _CopyWithImpl$Query$SearchLandingPage$popular;

  factory CopyWith$Query$SearchLandingPage$popular.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLandingPage$popular;

  TRes call({
    List<Fragment$media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$media?>? Function(
              Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
          fn);
}

class _CopyWithImpl$Query$SearchLandingPage$popular<TRes>
    implements CopyWith$Query$SearchLandingPage$popular<TRes> {
  _CopyWithImpl$Query$SearchLandingPage$popular(
    this._instance,
    this._then,
  );

  final Query$SearchLandingPage$popular _instance;

  final TRes Function(Query$SearchLandingPage$popular) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchLandingPage$popular(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              fn) =>
      call(
          media: fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$popular<TRes>
    implements CopyWith$Query$SearchLandingPage$popular<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$popular(this._res);

  final TRes _res;

  @override
  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  @override
  media(fn) => _res;
}

class Query$SearchLandingPage$top {
  Query$SearchLandingPage$top({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$SearchLandingPage$top.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$SearchLandingPage$top(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$media = media;
    resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLandingPage$top ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchLandingPage$top
    on Query$SearchLandingPage$top {
  CopyWith$Query$SearchLandingPage$top<Query$SearchLandingPage$top>
      get copyWith => CopyWith$Query$SearchLandingPage$top(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchLandingPage$top<TRes> {
  factory CopyWith$Query$SearchLandingPage$top(
    Query$SearchLandingPage$top instance,
    TRes Function(Query$SearchLandingPage$top) then,
  ) = _CopyWithImpl$Query$SearchLandingPage$top;

  factory CopyWith$Query$SearchLandingPage$top.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLandingPage$top;

  TRes call({
    List<Fragment$media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$media?>? Function(
              Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
          fn);
}

class _CopyWithImpl$Query$SearchLandingPage$top<TRes>
    implements CopyWith$Query$SearchLandingPage$top<TRes> {
  _CopyWithImpl$Query$SearchLandingPage$top(
    this._instance,
    this._then,
  );

  final Query$SearchLandingPage$top _instance;

  final TRes Function(Query$SearchLandingPage$top) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchLandingPage$top(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              fn) =>
      call(
          media: fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$top<TRes>
    implements CopyWith$Query$SearchLandingPage$top<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$top(this._res);

  final TRes _res;

  @override
  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  @override
  media(fn) => _res;
}
