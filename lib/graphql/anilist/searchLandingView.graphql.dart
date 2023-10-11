import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Fragment$media {
  Fragment$media({
    required this.id,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
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
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$media$title? title;

  final Fragment$media$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$media) || runtimeType != other.runtimeType) {
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
    String? $__typename,
  });
  CopyWith$Fragment$media$title<TRes> get title;
  CopyWith$Fragment$media$coverImage<TRes> get coverImage;
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

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$media$title.stub(_then(_instance))
        : CopyWith$Fragment$media$title(local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$media$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$media<TRes>
    implements CopyWith$Fragment$media<TRes> {
  _CopyWithStubImpl$Fragment$media(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$media$title? title,
    Fragment$media$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$media$title<TRes> get title =>
      CopyWith$Fragment$media$title.stub(_res);

  CopyWith$Fragment$media$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$media$coverImage.stub(_res);
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
          name: NameNode(value: 'extraLarge'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
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
      this.writeFragment(
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
    final result = this.readFragment(
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
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Fragment$media$title) || runtimeType != other.runtimeType) {
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

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$media$coverImage {
  Fragment$media$coverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$media$coverImage.fromJson(Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$media$coverImage(
      extraLarge: (l$extraLarge as String?),
      large: (l$large as String?),
      medium: (l$medium as String?),
      color: (l$color as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? extraLarge;

  final String? large;

  final String? medium;

  final String? color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$large = large;
    _resultData['large'] = l$large;
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$large = large;
    final l$medium = medium;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$extraLarge,
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
    if (!(other is Fragment$media$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
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
    String? extraLarge,
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

  TRes call({
    Object? extraLarge = _undefined,
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$media$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
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

  TRes _res;

  call({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$SearchLandingPage {
  factory Variables$Query$SearchLandingPage({
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  }) =>
      Variables$Query$SearchLandingPage._({
        if (season != null) r'season': season,
        if (seasonYear != null) r'seasonYear': seasonYear,
        if (nextSeason != null) r'nextSeason': nextSeason,
        if (nextYear != null) r'nextYear': nextYear,
      });

  Variables$Query$SearchLandingPage._(this._$data);

  factory Variables$Query$SearchLandingPage.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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

  Enum$MediaSeason? get season => (_$data['season'] as Enum$MediaSeason?);

  int? get seasonYear => (_$data['seasonYear'] as int?);

  Enum$MediaSeason? get nextSeason =>
      (_$data['nextSeason'] as Enum$MediaSeason?);

  int? get nextYear => (_$data['nextYear'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    if (!(other is Variables$Query$SearchLandingPage) ||
        runtimeType != other.runtimeType) {
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
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$nextSeason = nextSeason;
    final l$nextYear = nextYear;
    return Object.hashAll([
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

  TRes call({
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? nextSeason = _undefined,
    Object? nextYear = _undefined,
  }) =>
      _then(Variables$Query$SearchLandingPage._({
        ..._instance._$data,
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

  TRes _res;

  call({
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
    this.popular,
    this.top,
    this.$__typename = 'Query',
  });

  factory Query$SearchLandingPage.fromJson(Map<String, dynamic> json) {
    final l$trending = json['trending'];
    final l$season = json['season'];
    final l$nextSeason = json['nextSeason'];
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

  final Query$SearchLandingPage$popular? popular;

  final Query$SearchLandingPage$top? top;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trending = trending;
    _resultData['trending'] = l$trending?.toJson();
    final l$season = season;
    _resultData['season'] = l$season?.toJson();
    final l$nextSeason = nextSeason;
    _resultData['nextSeason'] = l$nextSeason?.toJson();
    final l$popular = popular;
    _resultData['popular'] = l$popular?.toJson();
    final l$top = top;
    _resultData['top'] = l$top?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trending = trending;
    final l$season = season;
    final l$nextSeason = nextSeason;
    final l$popular = popular;
    final l$top = top;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trending,
      l$season,
      l$nextSeason,
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
    if (!(other is Query$SearchLandingPage) ||
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
    Query$SearchLandingPage$popular? popular,
    Query$SearchLandingPage$top? top,
    String? $__typename,
  });
  CopyWith$Query$SearchLandingPage$trending<TRes> get trending;
  CopyWith$Query$SearchLandingPage$season<TRes> get season;
  CopyWith$Query$SearchLandingPage$nextSeason<TRes> get nextSeason;
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

  TRes call({
    Object? trending = _undefined,
    Object? season = _undefined,
    Object? nextSeason = _undefined,
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

  CopyWith$Query$SearchLandingPage$trending<TRes> get trending {
    final local$trending = _instance.trending;
    return local$trending == null
        ? CopyWith$Query$SearchLandingPage$trending.stub(_then(_instance))
        : CopyWith$Query$SearchLandingPage$trending(
            local$trending, (e) => call(trending: e));
  }

  CopyWith$Query$SearchLandingPage$season<TRes> get season {
    final local$season = _instance.season;
    return local$season == null
        ? CopyWith$Query$SearchLandingPage$season.stub(_then(_instance))
        : CopyWith$Query$SearchLandingPage$season(
            local$season, (e) => call(season: e));
  }

  CopyWith$Query$SearchLandingPage$nextSeason<TRes> get nextSeason {
    final local$nextSeason = _instance.nextSeason;
    return local$nextSeason == null
        ? CopyWith$Query$SearchLandingPage$nextSeason.stub(_then(_instance))
        : CopyWith$Query$SearchLandingPage$nextSeason(
            local$nextSeason, (e) => call(nextSeason: e));
  }

  CopyWith$Query$SearchLandingPage$popular<TRes> get popular {
    final local$popular = _instance.popular;
    return local$popular == null
        ? CopyWith$Query$SearchLandingPage$popular.stub(_then(_instance))
        : CopyWith$Query$SearchLandingPage$popular(
            local$popular, (e) => call(popular: e));
  }

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

  TRes _res;

  call({
    Query$SearchLandingPage$trending? trending,
    Query$SearchLandingPage$season? season,
    Query$SearchLandingPage$nextSeason? nextSeason,
    Query$SearchLandingPage$popular? popular,
    Query$SearchLandingPage$top? top,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchLandingPage$trending<TRes> get trending =>
      CopyWith$Query$SearchLandingPage$trending.stub(_res);

  CopyWith$Query$SearchLandingPage$season<TRes> get season =>
      CopyWith$Query$SearchLandingPage$season.stub(_res);

  CopyWith$Query$SearchLandingPage$nextSeason<TRes> get nextSeason =>
      CopyWith$Query$SearchLandingPage$nextSeason.stub(_res);

  CopyWith$Query$SearchLandingPage$popular<TRes> get popular =>
      CopyWith$Query$SearchLandingPage$popular.stub(_res);

  CopyWith$Query$SearchLandingPage$top<TRes> get top =>
      CopyWith$Query$SearchLandingPage$top.stub(_res);
}

const documentNodeQuerySearchLandingPage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchLandingPage'),
    variableDefinitions: [
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
            value: IntValueNode(value: '6'),
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
            value: IntValueNode(value: '6'),
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
            value: IntValueNode(value: '6'),
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
        alias: NameNode(value: 'popular'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '6'),
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
            value: IntValueNode(value: '6'),
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
      await this.query(options ?? Options$Query$SearchLandingPage());
  graphql.ObservableQuery<Query$SearchLandingPage> watchQuery$SearchLandingPage(
          [WatchOptions$Query$SearchLandingPage? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchLandingPage());
  void writeQuery$SearchLandingPage({
    required Query$SearchLandingPage data,
    Variables$Query$SearchLandingPage? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerySearchLandingPage),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchLandingPage? readQuery$SearchLandingPage({
    Variables$Query$SearchLandingPage? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerySearchLandingPage),
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
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$SearchLandingPage$trending) ||
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
          _fn);
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

  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$trending<TRes>
    implements CopyWith$Query$SearchLandingPage$trending<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$trending(this._res);

  TRes _res;

  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
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
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$SearchLandingPage$season) ||
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
          _fn);
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

  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$season<TRes>
    implements CopyWith$Query$SearchLandingPage$season<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$season(this._res);

  TRes _res;

  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
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
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$SearchLandingPage$nextSeason) ||
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
          _fn);
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

  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$nextSeason<TRes>
    implements CopyWith$Query$SearchLandingPage$nextSeason<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$nextSeason(this._res);

  TRes _res;

  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
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
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$SearchLandingPage$popular) ||
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
          _fn);
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

  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$popular<TRes>
    implements CopyWith$Query$SearchLandingPage$popular<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$popular(this._res);

  TRes _res;

  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
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
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$SearchLandingPage$top) ||
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
          _fn);
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

  TRes media(
          Iterable<Fragment$media?>? Function(
                  Iterable<CopyWith$Fragment$media<Fragment$media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchLandingPage$top<TRes>
    implements CopyWith$Query$SearchLandingPage$top<TRes> {
  _CopyWithStubImpl$Query$SearchLandingPage$top(this._res);

  TRes _res;

  call({
    List<Fragment$media?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}