import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$MediaFavorite {
  Fragment$MediaFavorite({
    this.nodes,
    this.$__typename = 'MediaConnection',
  });

  factory Fragment$MediaFavorite.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaFavorite(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFavorite$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFavorite$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaFavorite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Fragment$MediaFavorite on Fragment$MediaFavorite {
  CopyWith$Fragment$MediaFavorite<Fragment$MediaFavorite> get copyWith =>
      CopyWith$Fragment$MediaFavorite(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaFavorite<TRes> {
  factory CopyWith$Fragment$MediaFavorite(
    Fragment$MediaFavorite instance,
    TRes Function(Fragment$MediaFavorite) then,
  ) = _CopyWithImpl$Fragment$MediaFavorite;

  factory CopyWith$Fragment$MediaFavorite.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaFavorite;

  TRes call({
    List<Fragment$MediaFavorite$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$MediaFavorite$nodes?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFavorite$nodes<
                      Fragment$MediaFavorite$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$MediaFavorite<TRes>
    implements CopyWith$Fragment$MediaFavorite<TRes> {
  _CopyWithImpl$Fragment$MediaFavorite(
    this._instance,
    this._then,
  );

  final Fragment$MediaFavorite _instance;

  final TRes Function(Fragment$MediaFavorite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaFavorite(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$MediaFavorite$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$MediaFavorite$nodes?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFavorite$nodes<
                          Fragment$MediaFavorite$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFavorite$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$MediaFavorite<TRes>
    implements CopyWith$Fragment$MediaFavorite<TRes> {
  _CopyWithStubImpl$Fragment$MediaFavorite(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFavorite$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

const fragmentDefinitionMediaFavorite = FragmentDefinitionNode(
  name: NameNode(value: 'MediaFavorite'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MediaConnection'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'nodes'),
      alias: null,
      arguments: [],
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
          name: NameNode(value: 'type'),
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
              name: NameNode(value: 'medium'),
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
const documentNodeFragmentMediaFavorite = DocumentNode(definitions: [
  fragmentDefinitionMediaFavorite,
]);

extension ClientExtension$Fragment$MediaFavorite on graphql.GraphQLClient {
  void writeFragment$MediaFavorite({
    required Fragment$MediaFavorite data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaFavorite',
            document: documentNodeFragmentMediaFavorite,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaFavorite? readFragment$MediaFavorite({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaFavorite',
          document: documentNodeFragmentMediaFavorite,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaFavorite.fromJson(result);
  }
}

class Fragment$MediaFavorite$nodes {
  Fragment$MediaFavorite$nodes({
    required this.id,
    this.type,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$MediaFavorite$nodes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaFavorite$nodes(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      title: l$title == null
          ? null
          : Fragment$MediaFavorite$nodes$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaFavorite$nodes$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$MediaType? type;

  final Fragment$MediaFavorite$nodes$title? title;

  final Fragment$MediaFavorite$nodes$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
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
    final l$type = type;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
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
    if (!(other is Fragment$MediaFavorite$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Fragment$MediaFavorite$nodes
    on Fragment$MediaFavorite$nodes {
  CopyWith$Fragment$MediaFavorite$nodes<Fragment$MediaFavorite$nodes>
      get copyWith => CopyWith$Fragment$MediaFavorite$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaFavorite$nodes<TRes> {
  factory CopyWith$Fragment$MediaFavorite$nodes(
    Fragment$MediaFavorite$nodes instance,
    TRes Function(Fragment$MediaFavorite$nodes) then,
  ) = _CopyWithImpl$Fragment$MediaFavorite$nodes;

  factory CopyWith$Fragment$MediaFavorite$nodes.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaFavorite$nodes;

  TRes call({
    int? id,
    Enum$MediaType? type,
    Fragment$MediaFavorite$nodes$title? title,
    Fragment$MediaFavorite$nodes$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFavorite$nodes$title<TRes> get title;
  CopyWith$Fragment$MediaFavorite$nodes$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Fragment$MediaFavorite$nodes<TRes>
    implements CopyWith$Fragment$MediaFavorite$nodes<TRes> {
  _CopyWithImpl$Fragment$MediaFavorite$nodes(
    this._instance,
    this._then,
  );

  final Fragment$MediaFavorite$nodes _instance;

  final TRes Function(Fragment$MediaFavorite$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaFavorite$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$MediaFavorite$nodes$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$MediaFavorite$nodes$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFavorite$nodes$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$MediaFavorite$nodes$title.stub(_then(_instance))
        : CopyWith$Fragment$MediaFavorite$nodes$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$MediaFavorite$nodes$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaFavorite$nodes$coverImage.stub(
            _then(_instance))
        : CopyWith$Fragment$MediaFavorite$nodes$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaFavorite$nodes<TRes>
    implements CopyWith$Fragment$MediaFavorite$nodes<TRes> {
  _CopyWithStubImpl$Fragment$MediaFavorite$nodes(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    Fragment$MediaFavorite$nodes$title? title,
    Fragment$MediaFavorite$nodes$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFavorite$nodes$title<TRes> get title =>
      CopyWith$Fragment$MediaFavorite$nodes$title.stub(_res);

  CopyWith$Fragment$MediaFavorite$nodes$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$MediaFavorite$nodes$coverImage.stub(_res);
}

class Fragment$MediaFavorite$nodes$title {
  Fragment$MediaFavorite$nodes$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$MediaFavorite$nodes$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaFavorite$nodes$title(
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
    if (!(other is Fragment$MediaFavorite$nodes$title) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$MediaFavorite$nodes$title
    on Fragment$MediaFavorite$nodes$title {
  CopyWith$Fragment$MediaFavorite$nodes$title<
          Fragment$MediaFavorite$nodes$title>
      get copyWith => CopyWith$Fragment$MediaFavorite$nodes$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaFavorite$nodes$title<TRes> {
  factory CopyWith$Fragment$MediaFavorite$nodes$title(
    Fragment$MediaFavorite$nodes$title instance,
    TRes Function(Fragment$MediaFavorite$nodes$title) then,
  ) = _CopyWithImpl$Fragment$MediaFavorite$nodes$title;

  factory CopyWith$Fragment$MediaFavorite$nodes$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaFavorite$nodes$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaFavorite$nodes$title<TRes>
    implements CopyWith$Fragment$MediaFavorite$nodes$title<TRes> {
  _CopyWithImpl$Fragment$MediaFavorite$nodes$title(
    this._instance,
    this._then,
  );

  final Fragment$MediaFavorite$nodes$title _instance;

  final TRes Function(Fragment$MediaFavorite$nodes$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaFavorite$nodes$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaFavorite$nodes$title<TRes>
    implements CopyWith$Fragment$MediaFavorite$nodes$title<TRes> {
  _CopyWithStubImpl$Fragment$MediaFavorite$nodes$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaFavorite$nodes$coverImage {
  Fragment$MediaFavorite$nodes$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaFavorite$nodes$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaFavorite$nodes$coverImage(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaFavorite$nodes$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
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

extension UtilityExtension$Fragment$MediaFavorite$nodes$coverImage
    on Fragment$MediaFavorite$nodes$coverImage {
  CopyWith$Fragment$MediaFavorite$nodes$coverImage<
          Fragment$MediaFavorite$nodes$coverImage>
      get copyWith => CopyWith$Fragment$MediaFavorite$nodes$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaFavorite$nodes$coverImage<TRes> {
  factory CopyWith$Fragment$MediaFavorite$nodes$coverImage(
    Fragment$MediaFavorite$nodes$coverImage instance,
    TRes Function(Fragment$MediaFavorite$nodes$coverImage) then,
  ) = _CopyWithImpl$Fragment$MediaFavorite$nodes$coverImage;

  factory CopyWith$Fragment$MediaFavorite$nodes$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaFavorite$nodes$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaFavorite$nodes$coverImage<TRes>
    implements CopyWith$Fragment$MediaFavorite$nodes$coverImage<TRes> {
  _CopyWithImpl$Fragment$MediaFavorite$nodes$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$MediaFavorite$nodes$coverImage _instance;

  final TRes Function(Fragment$MediaFavorite$nodes$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaFavorite$nodes$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaFavorite$nodes$coverImage<TRes>
    implements CopyWith$Fragment$MediaFavorite$nodes$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaFavorite$nodes$coverImage(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStats {
  Fragment$UserStats({
    required this.count,
    required this.minutesWatched,
    required this.episodesWatched,
    required this.chaptersRead,
    required this.volumesRead,
    this.formats,
    this.statuses,
    this.releaseYears,
    this.genres,
    this.tags,
    this.$__typename = 'UserStatistics',
  });

  factory Fragment$UserStats.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$minutesWatched = json['minutesWatched'];
    final l$episodesWatched = json['episodesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$volumesRead = json['volumesRead'];
    final l$formats = json['formats'];
    final l$statuses = json['statuses'];
    final l$releaseYears = json['releaseYears'];
    final l$genres = json['genres'];
    final l$tags = json['tags'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStats(
      count: (l$count as int),
      minutesWatched: (l$minutesWatched as int),
      episodesWatched: (l$episodesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      volumesRead: (l$volumesRead as int),
      formats: (l$formats as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStats$formats.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      statuses: (l$statuses as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStats$statuses.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      releaseYears: (l$releaseYears as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStats$releaseYears.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      genres: (l$genres as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStats$genres.fromJson((e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStats$tags.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int minutesWatched;

  final int episodesWatched;

  final int chaptersRead;

  final int volumesRead;

  final List<Fragment$UserStats$formats?>? formats;

  final List<Fragment$UserStats$statuses?>? statuses;

  final List<Fragment$UserStats$releaseYears?>? releaseYears;

  final List<Fragment$UserStats$genres?>? genres;

  final List<Fragment$UserStats$tags?>? tags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$episodesWatched = episodesWatched;
    _resultData['episodesWatched'] = l$episodesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$volumesRead = volumesRead;
    _resultData['volumesRead'] = l$volumesRead;
    final l$formats = formats;
    _resultData['formats'] = l$formats?.map((e) => e?.toJson()).toList();
    final l$statuses = statuses;
    _resultData['statuses'] = l$statuses?.map((e) => e?.toJson()).toList();
    final l$releaseYears = releaseYears;
    _resultData['releaseYears'] =
        l$releaseYears?.map((e) => e?.toJson()).toList();
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e?.toJson()).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$minutesWatched = minutesWatched;
    final l$episodesWatched = episodesWatched;
    final l$chaptersRead = chaptersRead;
    final l$volumesRead = volumesRead;
    final l$formats = formats;
    final l$statuses = statuses;
    final l$releaseYears = releaseYears;
    final l$genres = genres;
    final l$tags = tags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$minutesWatched,
      l$episodesWatched,
      l$chaptersRead,
      l$volumesRead,
      l$formats == null ? null : Object.hashAll(l$formats.map((v) => v)),
      l$statuses == null ? null : Object.hashAll(l$statuses.map((v) => v)),
      l$releaseYears == null
          ? null
          : Object.hashAll(l$releaseYears.map((v) => v)),
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$tags == null ? null : Object.hashAll(l$tags.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserStats) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$episodesWatched = episodesWatched;
    final lOther$episodesWatched = other.episodesWatched;
    if (l$episodesWatched != lOther$episodesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$volumesRead = volumesRead;
    final lOther$volumesRead = other.volumesRead;
    if (l$volumesRead != lOther$volumesRead) {
      return false;
    }
    final l$formats = formats;
    final lOther$formats = other.formats;
    if (l$formats != null && lOther$formats != null) {
      if (l$formats.length != lOther$formats.length) {
        return false;
      }
      for (int i = 0; i < l$formats.length; i++) {
        final l$formats$entry = l$formats[i];
        final lOther$formats$entry = lOther$formats[i];
        if (l$formats$entry != lOther$formats$entry) {
          return false;
        }
      }
    } else if (l$formats != lOther$formats) {
      return false;
    }
    final l$statuses = statuses;
    final lOther$statuses = other.statuses;
    if (l$statuses != null && lOther$statuses != null) {
      if (l$statuses.length != lOther$statuses.length) {
        return false;
      }
      for (int i = 0; i < l$statuses.length; i++) {
        final l$statuses$entry = l$statuses[i];
        final lOther$statuses$entry = lOther$statuses[i];
        if (l$statuses$entry != lOther$statuses$entry) {
          return false;
        }
      }
    } else if (l$statuses != lOther$statuses) {
      return false;
    }
    final l$releaseYears = releaseYears;
    final lOther$releaseYears = other.releaseYears;
    if (l$releaseYears != null && lOther$releaseYears != null) {
      if (l$releaseYears.length != lOther$releaseYears.length) {
        return false;
      }
      for (int i = 0; i < l$releaseYears.length; i++) {
        final l$releaseYears$entry = l$releaseYears[i];
        final lOther$releaseYears$entry = lOther$releaseYears[i];
        if (l$releaseYears$entry != lOther$releaseYears$entry) {
          return false;
        }
      }
    } else if (l$releaseYears != lOther$releaseYears) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) {
        return false;
      }
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) {
          return false;
        }
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
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

extension UtilityExtension$Fragment$UserStats on Fragment$UserStats {
  CopyWith$Fragment$UserStats<Fragment$UserStats> get copyWith =>
      CopyWith$Fragment$UserStats(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserStats<TRes> {
  factory CopyWith$Fragment$UserStats(
    Fragment$UserStats instance,
    TRes Function(Fragment$UserStats) then,
  ) = _CopyWithImpl$Fragment$UserStats;

  factory CopyWith$Fragment$UserStats.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStats;

  TRes call({
    int? count,
    int? minutesWatched,
    int? episodesWatched,
    int? chaptersRead,
    int? volumesRead,
    List<Fragment$UserStats$formats?>? formats,
    List<Fragment$UserStats$statuses?>? statuses,
    List<Fragment$UserStats$releaseYears?>? releaseYears,
    List<Fragment$UserStats$genres?>? genres,
    List<Fragment$UserStats$tags?>? tags,
    String? $__typename,
  });
  TRes formats(
      Iterable<Fragment$UserStats$formats?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStats$formats<
                      Fragment$UserStats$formats>?>?)
          _fn);
  TRes statuses(
      Iterable<Fragment$UserStats$statuses?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStats$statuses<
                      Fragment$UserStats$statuses>?>?)
          _fn);
  TRes releaseYears(
      Iterable<Fragment$UserStats$releaseYears?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStats$releaseYears<
                      Fragment$UserStats$releaseYears>?>?)
          _fn);
  TRes genres(
      Iterable<Fragment$UserStats$genres?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStats$genres<
                      Fragment$UserStats$genres>?>?)
          _fn);
  TRes tags(
      Iterable<Fragment$UserStats$tags?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStats$tags<Fragment$UserStats$tags>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$UserStats<TRes>
    implements CopyWith$Fragment$UserStats<TRes> {
  _CopyWithImpl$Fragment$UserStats(
    this._instance,
    this._then,
  );

  final Fragment$UserStats _instance;

  final TRes Function(Fragment$UserStats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? minutesWatched = _undefined,
    Object? episodesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? volumesRead = _undefined,
    Object? formats = _undefined,
    Object? statuses = _undefined,
    Object? releaseYears = _undefined,
    Object? genres = _undefined,
    Object? tags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStats(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        episodesWatched:
            episodesWatched == _undefined || episodesWatched == null
                ? _instance.episodesWatched
                : (episodesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        volumesRead: volumesRead == _undefined || volumesRead == null
            ? _instance.volumesRead
            : (volumesRead as int),
        formats: formats == _undefined
            ? _instance.formats
            : (formats as List<Fragment$UserStats$formats?>?),
        statuses: statuses == _undefined
            ? _instance.statuses
            : (statuses as List<Fragment$UserStats$statuses?>?),
        releaseYears: releaseYears == _undefined
            ? _instance.releaseYears
            : (releaseYears as List<Fragment$UserStats$releaseYears?>?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<Fragment$UserStats$genres?>?),
        tags: tags == _undefined
            ? _instance.tags
            : (tags as List<Fragment$UserStats$tags?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes formats(
          Iterable<Fragment$UserStats$formats?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStats$formats<
                          Fragment$UserStats$formats>?>?)
              _fn) =>
      call(
          formats: _fn(_instance.formats?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStats$formats(
                  e,
                  (i) => i,
                )))?.toList());

  TRes statuses(
          Iterable<Fragment$UserStats$statuses?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStats$statuses<
                          Fragment$UserStats$statuses>?>?)
              _fn) =>
      call(
          statuses: _fn(_instance.statuses?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStats$statuses(
                  e,
                  (i) => i,
                )))?.toList());

  TRes releaseYears(
          Iterable<Fragment$UserStats$releaseYears?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStats$releaseYears<
                          Fragment$UserStats$releaseYears>?>?)
              _fn) =>
      call(
          releaseYears: _fn(_instance.releaseYears?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStats$releaseYears(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genres(
          Iterable<Fragment$UserStats$genres?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStats$genres<
                          Fragment$UserStats$genres>?>?)
              _fn) =>
      call(
          genres: _fn(_instance.genres?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStats$genres(
                  e,
                  (i) => i,
                )))?.toList());

  TRes tags(
          Iterable<Fragment$UserStats$tags?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStats$tags<
                          Fragment$UserStats$tags>?>?)
              _fn) =>
      call(
          tags: _fn(_instance.tags?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStats$tags(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$UserStats<TRes>
    implements CopyWith$Fragment$UserStats<TRes> {
  _CopyWithStubImpl$Fragment$UserStats(this._res);

  TRes _res;

  call({
    int? count,
    int? minutesWatched,
    int? episodesWatched,
    int? chaptersRead,
    int? volumesRead,
    List<Fragment$UserStats$formats?>? formats,
    List<Fragment$UserStats$statuses?>? statuses,
    List<Fragment$UserStats$releaseYears?>? releaseYears,
    List<Fragment$UserStats$genres?>? genres,
    List<Fragment$UserStats$tags?>? tags,
    String? $__typename,
  }) =>
      _res;

  formats(_fn) => _res;

  statuses(_fn) => _res;

  releaseYears(_fn) => _res;

  genres(_fn) => _res;

  tags(_fn) => _res;
}

const fragmentDefinitionUserStats = FragmentDefinitionNode(
  name: NameNode(value: 'UserStats'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'UserStatistics'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'count'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'minutesWatched'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'episodesWatched'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'chaptersRead'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'volumesRead'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'formats'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'format'),
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
      name: NameNode(value: 'statuses'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'status'),
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
      name: NameNode(value: 'releaseYears'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'releaseYear'),
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
      name: NameNode(value: 'genres'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'genre'),
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
      name: NameNode(value: 'tags'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'tag'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'name'),
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
const documentNodeFragmentUserStats = DocumentNode(definitions: [
  fragmentDefinitionUserStats,
]);

extension ClientExtension$Fragment$UserStats on graphql.GraphQLClient {
  void writeFragment$UserStats({
    required Fragment$UserStats data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'UserStats',
            document: documentNodeFragmentUserStats,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$UserStats? readFragment$UserStats({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UserStats',
          document: documentNodeFragmentUserStats,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UserStats.fromJson(result);
  }
}

class Fragment$UserStats$formats {
  Fragment$UserStats$formats({
    required this.count,
    required this.minutesWatched,
    required this.chaptersRead,
    this.format,
    this.$__typename = 'UserFormatStatistic',
  });

  factory Fragment$UserStats$formats.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$format = json['format'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStats$formats(
      count: (l$count as int),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int minutesWatched;

  final int chaptersRead;

  final Enum$MediaFormat? format;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$format = format;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$minutesWatched,
      l$chaptersRead,
      l$format,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserStats$formats) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
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

extension UtilityExtension$Fragment$UserStats$formats
    on Fragment$UserStats$formats {
  CopyWith$Fragment$UserStats$formats<Fragment$UserStats$formats>
      get copyWith => CopyWith$Fragment$UserStats$formats(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStats$formats<TRes> {
  factory CopyWith$Fragment$UserStats$formats(
    Fragment$UserStats$formats instance,
    TRes Function(Fragment$UserStats$formats) then,
  ) = _CopyWithImpl$Fragment$UserStats$formats;

  factory CopyWith$Fragment$UserStats$formats.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStats$formats;

  TRes call({
    int? count,
    int? minutesWatched,
    int? chaptersRead,
    Enum$MediaFormat? format,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStats$formats<TRes>
    implements CopyWith$Fragment$UserStats$formats<TRes> {
  _CopyWithImpl$Fragment$UserStats$formats(
    this._instance,
    this._then,
  );

  final Fragment$UserStats$formats _instance;

  final TRes Function(Fragment$UserStats$formats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? format = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStats$formats(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStats$formats<TRes>
    implements CopyWith$Fragment$UserStats$formats<TRes> {
  _CopyWithStubImpl$Fragment$UserStats$formats(this._res);

  TRes _res;

  call({
    int? count,
    int? minutesWatched,
    int? chaptersRead,
    Enum$MediaFormat? format,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStats$statuses {
  Fragment$UserStats$statuses({
    required this.count,
    required this.minutesWatched,
    required this.chaptersRead,
    this.status,
    this.$__typename = 'UserStatusStatistic',
  });

  factory Fragment$UserStats$statuses.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStats$statuses(
      count: (l$count as int),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int minutesWatched;

  final int chaptersRead;

  final Enum$MediaListStatus? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$minutesWatched,
      l$chaptersRead,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserStats$statuses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Fragment$UserStats$statuses
    on Fragment$UserStats$statuses {
  CopyWith$Fragment$UserStats$statuses<Fragment$UserStats$statuses>
      get copyWith => CopyWith$Fragment$UserStats$statuses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStats$statuses<TRes> {
  factory CopyWith$Fragment$UserStats$statuses(
    Fragment$UserStats$statuses instance,
    TRes Function(Fragment$UserStats$statuses) then,
  ) = _CopyWithImpl$Fragment$UserStats$statuses;

  factory CopyWith$Fragment$UserStats$statuses.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStats$statuses;

  TRes call({
    int? count,
    int? minutesWatched,
    int? chaptersRead,
    Enum$MediaListStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStats$statuses<TRes>
    implements CopyWith$Fragment$UserStats$statuses<TRes> {
  _CopyWithImpl$Fragment$UserStats$statuses(
    this._instance,
    this._then,
  );

  final Fragment$UserStats$statuses _instance;

  final TRes Function(Fragment$UserStats$statuses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStats$statuses(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStats$statuses<TRes>
    implements CopyWith$Fragment$UserStats$statuses<TRes> {
  _CopyWithStubImpl$Fragment$UserStats$statuses(this._res);

  TRes _res;

  call({
    int? count,
    int? minutesWatched,
    int? chaptersRead,
    Enum$MediaListStatus? status,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStats$releaseYears {
  Fragment$UserStats$releaseYears({
    required this.count,
    required this.minutesWatched,
    required this.chaptersRead,
    this.releaseYear,
    this.$__typename = 'UserReleaseYearStatistic',
  });

  factory Fragment$UserStats$releaseYears.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$releaseYear = json['releaseYear'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStats$releaseYears(
      count: (l$count as int),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      releaseYear: (l$releaseYear as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int minutesWatched;

  final int chaptersRead;

  final int? releaseYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$releaseYear = releaseYear;
    _resultData['releaseYear'] = l$releaseYear;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$releaseYear = releaseYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$minutesWatched,
      l$chaptersRead,
      l$releaseYear,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserStats$releaseYears) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$releaseYear = releaseYear;
    final lOther$releaseYear = other.releaseYear;
    if (l$releaseYear != lOther$releaseYear) {
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

extension UtilityExtension$Fragment$UserStats$releaseYears
    on Fragment$UserStats$releaseYears {
  CopyWith$Fragment$UserStats$releaseYears<Fragment$UserStats$releaseYears>
      get copyWith => CopyWith$Fragment$UserStats$releaseYears(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStats$releaseYears<TRes> {
  factory CopyWith$Fragment$UserStats$releaseYears(
    Fragment$UserStats$releaseYears instance,
    TRes Function(Fragment$UserStats$releaseYears) then,
  ) = _CopyWithImpl$Fragment$UserStats$releaseYears;

  factory CopyWith$Fragment$UserStats$releaseYears.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStats$releaseYears;

  TRes call({
    int? count,
    int? minutesWatched,
    int? chaptersRead,
    int? releaseYear,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStats$releaseYears<TRes>
    implements CopyWith$Fragment$UserStats$releaseYears<TRes> {
  _CopyWithImpl$Fragment$UserStats$releaseYears(
    this._instance,
    this._then,
  );

  final Fragment$UserStats$releaseYears _instance;

  final TRes Function(Fragment$UserStats$releaseYears) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? releaseYear = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStats$releaseYears(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        releaseYear: releaseYear == _undefined
            ? _instance.releaseYear
            : (releaseYear as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStats$releaseYears<TRes>
    implements CopyWith$Fragment$UserStats$releaseYears<TRes> {
  _CopyWithStubImpl$Fragment$UserStats$releaseYears(this._res);

  TRes _res;

  call({
    int? count,
    int? minutesWatched,
    int? chaptersRead,
    int? releaseYear,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStats$genres {
  Fragment$UserStats$genres({
    required this.count,
    required this.minutesWatched,
    required this.chaptersRead,
    this.genre,
    this.$__typename = 'UserGenreStatistic',
  });

  factory Fragment$UserStats$genres.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$genre = json['genre'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStats$genres(
      count: (l$count as int),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      genre: (l$genre as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int minutesWatched;

  final int chaptersRead;

  final String? genre;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$genre = genre;
    _resultData['genre'] = l$genre;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$genre = genre;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$minutesWatched,
      l$chaptersRead,
      l$genre,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserStats$genres) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$genre = genre;
    final lOther$genre = other.genre;
    if (l$genre != lOther$genre) {
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

extension UtilityExtension$Fragment$UserStats$genres
    on Fragment$UserStats$genres {
  CopyWith$Fragment$UserStats$genres<Fragment$UserStats$genres> get copyWith =>
      CopyWith$Fragment$UserStats$genres(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserStats$genres<TRes> {
  factory CopyWith$Fragment$UserStats$genres(
    Fragment$UserStats$genres instance,
    TRes Function(Fragment$UserStats$genres) then,
  ) = _CopyWithImpl$Fragment$UserStats$genres;

  factory CopyWith$Fragment$UserStats$genres.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStats$genres;

  TRes call({
    int? count,
    int? minutesWatched,
    int? chaptersRead,
    String? genre,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStats$genres<TRes>
    implements CopyWith$Fragment$UserStats$genres<TRes> {
  _CopyWithImpl$Fragment$UserStats$genres(
    this._instance,
    this._then,
  );

  final Fragment$UserStats$genres _instance;

  final TRes Function(Fragment$UserStats$genres) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? genre = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStats$genres(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        genre: genre == _undefined ? _instance.genre : (genre as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStats$genres<TRes>
    implements CopyWith$Fragment$UserStats$genres<TRes> {
  _CopyWithStubImpl$Fragment$UserStats$genres(this._res);

  TRes _res;

  call({
    int? count,
    int? minutesWatched,
    int? chaptersRead,
    String? genre,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStats$tags {
  Fragment$UserStats$tags({
    required this.count,
    required this.minutesWatched,
    required this.chaptersRead,
    this.tag,
    this.$__typename = 'UserTagStatistic',
  });

  factory Fragment$UserStats$tags.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$tag = json['tag'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStats$tags(
      count: (l$count as int),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      tag: l$tag == null
          ? null
          : Fragment$UserStats$tags$tag.fromJson(
              (l$tag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int minutesWatched;

  final int chaptersRead;

  final Fragment$UserStats$tags$tag? tag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$tag = tag;
    _resultData['tag'] = l$tag?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$tag = tag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$minutesWatched,
      l$chaptersRead,
      l$tag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserStats$tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (l$tag != lOther$tag) {
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

extension UtilityExtension$Fragment$UserStats$tags on Fragment$UserStats$tags {
  CopyWith$Fragment$UserStats$tags<Fragment$UserStats$tags> get copyWith =>
      CopyWith$Fragment$UserStats$tags(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserStats$tags<TRes> {
  factory CopyWith$Fragment$UserStats$tags(
    Fragment$UserStats$tags instance,
    TRes Function(Fragment$UserStats$tags) then,
  ) = _CopyWithImpl$Fragment$UserStats$tags;

  factory CopyWith$Fragment$UserStats$tags.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStats$tags;

  TRes call({
    int? count,
    int? minutesWatched,
    int? chaptersRead,
    Fragment$UserStats$tags$tag? tag,
    String? $__typename,
  });
  CopyWith$Fragment$UserStats$tags$tag<TRes> get tag;
}

class _CopyWithImpl$Fragment$UserStats$tags<TRes>
    implements CopyWith$Fragment$UserStats$tags<TRes> {
  _CopyWithImpl$Fragment$UserStats$tags(
    this._instance,
    this._then,
  );

  final Fragment$UserStats$tags _instance;

  final TRes Function(Fragment$UserStats$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? tag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStats$tags(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        tag: tag == _undefined
            ? _instance.tag
            : (tag as Fragment$UserStats$tags$tag?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserStats$tags$tag<TRes> get tag {
    final local$tag = _instance.tag;
    return local$tag == null
        ? CopyWith$Fragment$UserStats$tags$tag.stub(_then(_instance))
        : CopyWith$Fragment$UserStats$tags$tag(local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl$Fragment$UserStats$tags<TRes>
    implements CopyWith$Fragment$UserStats$tags<TRes> {
  _CopyWithStubImpl$Fragment$UserStats$tags(this._res);

  TRes _res;

  call({
    int? count,
    int? minutesWatched,
    int? chaptersRead,
    Fragment$UserStats$tags$tag? tag,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserStats$tags$tag<TRes> get tag =>
      CopyWith$Fragment$UserStats$tags$tag.stub(_res);
}

class Fragment$UserStats$tags$tag {
  Fragment$UserStats$tags$tag({
    required this.name,
    this.$__typename = 'MediaTag',
  });

  factory Fragment$UserStats$tags$tag.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStats$tags$tag(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserStats$tags$tag) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$UserStats$tags$tag
    on Fragment$UserStats$tags$tag {
  CopyWith$Fragment$UserStats$tags$tag<Fragment$UserStats$tags$tag>
      get copyWith => CopyWith$Fragment$UserStats$tags$tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStats$tags$tag<TRes> {
  factory CopyWith$Fragment$UserStats$tags$tag(
    Fragment$UserStats$tags$tag instance,
    TRes Function(Fragment$UserStats$tags$tag) then,
  ) = _CopyWithImpl$Fragment$UserStats$tags$tag;

  factory CopyWith$Fragment$UserStats$tags$tag.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStats$tags$tag;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStats$tags$tag<TRes>
    implements CopyWith$Fragment$UserStats$tags$tag<TRes> {
  _CopyWithImpl$Fragment$UserStats$tags$tag(
    this._instance,
    this._then,
  );

  final Fragment$UserStats$tags$tag _instance;

  final TRes Function(Fragment$UserStats$tags$tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStats$tags$tag(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStats$tags$tag<TRes>
    implements CopyWith$Fragment$UserStats$tags$tag<TRes> {
  _CopyWithStubImpl$Fragment$UserStats$tags$tag(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetUserProfile {
  factory Variables$Query$GetUserProfile({int? perPageFavorites}) =>
      Variables$Query$GetUserProfile._({
        if (perPageFavorites != null) r'perPageFavorites': perPageFavorites,
      });

  Variables$Query$GetUserProfile._(this._$data);

  factory Variables$Query$GetUserProfile.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('perPageFavorites')) {
      final l$perPageFavorites = data['perPageFavorites'];
      result$data['perPageFavorites'] = (l$perPageFavorites as int?);
    }
    return Variables$Query$GetUserProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get perPageFavorites => (_$data['perPageFavorites'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('perPageFavorites')) {
      final l$perPageFavorites = perPageFavorites;
      result$data['perPageFavorites'] = l$perPageFavorites;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetUserProfile<Variables$Query$GetUserProfile>
      get copyWith => CopyWith$Variables$Query$GetUserProfile(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUserProfile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$perPageFavorites = perPageFavorites;
    final lOther$perPageFavorites = other.perPageFavorites;
    if (_$data.containsKey('perPageFavorites') !=
        other._$data.containsKey('perPageFavorites')) {
      return false;
    }
    if (l$perPageFavorites != lOther$perPageFavorites) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$perPageFavorites = perPageFavorites;
    return Object.hashAll([
      _$data.containsKey('perPageFavorites') ? l$perPageFavorites : const {}
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetUserProfile<TRes> {
  factory CopyWith$Variables$Query$GetUserProfile(
    Variables$Query$GetUserProfile instance,
    TRes Function(Variables$Query$GetUserProfile) then,
  ) = _CopyWithImpl$Variables$Query$GetUserProfile;

  factory CopyWith$Variables$Query$GetUserProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserProfile;

  TRes call({int? perPageFavorites});
}

class _CopyWithImpl$Variables$Query$GetUserProfile<TRes>
    implements CopyWith$Variables$Query$GetUserProfile<TRes> {
  _CopyWithImpl$Variables$Query$GetUserProfile(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserProfile _instance;

  final TRes Function(Variables$Query$GetUserProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? perPageFavorites = _undefined}) =>
      _then(Variables$Query$GetUserProfile._({
        ..._instance._$data,
        if (perPageFavorites != _undefined)
          'perPageFavorites': (perPageFavorites as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserProfile<TRes>
    implements CopyWith$Variables$Query$GetUserProfile<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserProfile(this._res);

  TRes _res;

  call({int? perPageFavorites}) => _res;
}

class Query$GetUserProfile {
  Query$GetUserProfile({
    this.Viewer,
    this.$__typename = 'Query',
  });

  factory Query$GetUserProfile.fromJson(Map<String, dynamic> json) {
    final l$Viewer = json['Viewer'];
    final l$$__typename = json['__typename'];
    return Query$GetUserProfile(
      Viewer: l$Viewer == null
          ? null
          : Query$GetUserProfile$Viewer.fromJson(
              (l$Viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserProfile$Viewer? Viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Viewer = Viewer;
    _resultData['Viewer'] = l$Viewer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Viewer = Viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Viewer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserProfile) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Viewer = Viewer;
    final lOther$Viewer = other.Viewer;
    if (l$Viewer != lOther$Viewer) {
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

extension UtilityExtension$Query$GetUserProfile on Query$GetUserProfile {
  CopyWith$Query$GetUserProfile<Query$GetUserProfile> get copyWith =>
      CopyWith$Query$GetUserProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUserProfile<TRes> {
  factory CopyWith$Query$GetUserProfile(
    Query$GetUserProfile instance,
    TRes Function(Query$GetUserProfile) then,
  ) = _CopyWithImpl$Query$GetUserProfile;

  factory CopyWith$Query$GetUserProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserProfile;

  TRes call({
    Query$GetUserProfile$Viewer? Viewer,
    String? $__typename,
  });
  CopyWith$Query$GetUserProfile$Viewer<TRes> get Viewer;
}

class _CopyWithImpl$Query$GetUserProfile<TRes>
    implements CopyWith$Query$GetUserProfile<TRes> {
  _CopyWithImpl$Query$GetUserProfile(
    this._instance,
    this._then,
  );

  final Query$GetUserProfile _instance;

  final TRes Function(Query$GetUserProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserProfile(
        Viewer: Viewer == _undefined
            ? _instance.Viewer
            : (Viewer as Query$GetUserProfile$Viewer?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUserProfile$Viewer<TRes> get Viewer {
    final local$Viewer = _instance.Viewer;
    return local$Viewer == null
        ? CopyWith$Query$GetUserProfile$Viewer.stub(_then(_instance))
        : CopyWith$Query$GetUserProfile$Viewer(
            local$Viewer, (e) => call(Viewer: e));
  }
}

class _CopyWithStubImpl$Query$GetUserProfile<TRes>
    implements CopyWith$Query$GetUserProfile<TRes> {
  _CopyWithStubImpl$Query$GetUserProfile(this._res);

  TRes _res;

  call({
    Query$GetUserProfile$Viewer? Viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUserProfile$Viewer<TRes> get Viewer =>
      CopyWith$Query$GetUserProfile$Viewer.stub(_res);
}

const documentNodeQueryGetUserProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserProfile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perPageFavorites')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Viewer'),
        alias: null,
        arguments: [],
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'about'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'siteUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'medium'),
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
            name: NameNode(value: 'favourites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'anime'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'perPage'),
                    value:
                        VariableNode(name: NameNode(value: 'perPageFavorites')),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'MediaFavorite'),
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
                name: NameNode(value: 'manga'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'perPage'),
                    value:
                        VariableNode(name: NameNode(value: 'perPageFavorites')),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'MediaFavorite'),
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
            name: NameNode(value: 'statistics'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'anime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserStats'),
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
                name: NameNode(value: 'manga'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserStats'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionMediaFavorite,
  fragmentDefinitionUserStats,
]);
Query$GetUserProfile _parserFn$Query$GetUserProfile(
        Map<String, dynamic> data) =>
    Query$GetUserProfile.fromJson(data);
typedef OnQueryComplete$Query$GetUserProfile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUserProfile?,
);

class Options$Query$GetUserProfile
    extends graphql.QueryOptions<Query$GetUserProfile> {
  Options$Query$GetUserProfile({
    String? operationName,
    Variables$Query$GetUserProfile? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserProfile? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserProfile? onComplete,
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
                    data == null ? null : _parserFn$Query$GetUserProfile(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserProfile,
          parserFn: _parserFn$Query$GetUserProfile,
        );

  final OnQueryComplete$Query$GetUserProfile? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserProfile
    extends graphql.WatchQueryOptions<Query$GetUserProfile> {
  WatchOptions$Query$GetUserProfile({
    String? operationName,
    Variables$Query$GetUserProfile? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserProfile? typedOptimisticResult,
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
          document: documentNodeQueryGetUserProfile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserProfile,
        );
}

class FetchMoreOptions$Query$GetUserProfile extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserProfile({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetUserProfile? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetUserProfile,
        );
}

extension ClientExtension$Query$GetUserProfile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserProfile>> query$GetUserProfile(
          [Options$Query$GetUserProfile? options]) async =>
      await this.query(options ?? Options$Query$GetUserProfile());
  graphql.ObservableQuery<Query$GetUserProfile> watchQuery$GetUserProfile(
          [WatchOptions$Query$GetUserProfile? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetUserProfile());
  void writeQuery$GetUserProfile({
    required Query$GetUserProfile data,
    Variables$Query$GetUserProfile? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetUserProfile),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserProfile? readQuery$GetUserProfile({
    Variables$Query$GetUserProfile? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetUserProfile),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUserProfile.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserProfile> useQuery$GetUserProfile(
        [Options$Query$GetUserProfile? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetUserProfile());
graphql.ObservableQuery<Query$GetUserProfile> useWatchQuery$GetUserProfile(
        [WatchOptions$Query$GetUserProfile? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetUserProfile());

class Query$GetUserProfile$Widget
    extends graphql_flutter.Query<Query$GetUserProfile> {
  Query$GetUserProfile$Widget({
    widgets.Key? key,
    Options$Query$GetUserProfile? options,
    required graphql_flutter.QueryBuilder<Query$GetUserProfile> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetUserProfile(),
          builder: builder,
        );
}

class Query$GetUserProfile$Viewer {
  Query$GetUserProfile$Viewer({
    required this.id,
    required this.name,
    this.about,
    this.siteUrl,
    this.avatar,
    this.favourites,
    this.statistics,
    this.$__typename = 'User',
  });

  factory Query$GetUserProfile$Viewer.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$about = json['about'];
    final l$siteUrl = json['siteUrl'];
    final l$avatar = json['avatar'];
    final l$favourites = json['favourites'];
    final l$statistics = json['statistics'];
    final l$$__typename = json['__typename'];
    return Query$GetUserProfile$Viewer(
      id: (l$id as int),
      name: (l$name as String),
      about: (l$about as String?),
      siteUrl: (l$siteUrl as String?),
      avatar: l$avatar == null
          ? null
          : Query$GetUserProfile$Viewer$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      favourites: l$favourites == null
          ? null
          : Query$GetUserProfile$Viewer$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
      statistics: l$statistics == null
          ? null
          : Query$GetUserProfile$Viewer$statistics.fromJson(
              (l$statistics as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? about;

  final String? siteUrl;

  final Query$GetUserProfile$Viewer$avatar? avatar;

  final Query$GetUserProfile$Viewer$favourites? favourites;

  final Query$GetUserProfile$Viewer$statistics? statistics;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$about = about;
    _resultData['about'] = l$about;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites?.toJson();
    final l$statistics = statistics;
    _resultData['statistics'] = l$statistics?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$about = about;
    final l$siteUrl = siteUrl;
    final l$avatar = avatar;
    final l$favourites = favourites;
    final l$statistics = statistics;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$about,
      l$siteUrl,
      l$avatar,
      l$favourites,
      l$statistics,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserProfile$Viewer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$about = about;
    final lOther$about = other.about;
    if (l$about != lOther$about) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    final l$statistics = statistics;
    final lOther$statistics = other.statistics;
    if (l$statistics != lOther$statistics) {
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

extension UtilityExtension$Query$GetUserProfile$Viewer
    on Query$GetUserProfile$Viewer {
  CopyWith$Query$GetUserProfile$Viewer<Query$GetUserProfile$Viewer>
      get copyWith => CopyWith$Query$GetUserProfile$Viewer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserProfile$Viewer<TRes> {
  factory CopyWith$Query$GetUserProfile$Viewer(
    Query$GetUserProfile$Viewer instance,
    TRes Function(Query$GetUserProfile$Viewer) then,
  ) = _CopyWithImpl$Query$GetUserProfile$Viewer;

  factory CopyWith$Query$GetUserProfile$Viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserProfile$Viewer;

  TRes call({
    int? id,
    String? name,
    String? about,
    String? siteUrl,
    Query$GetUserProfile$Viewer$avatar? avatar,
    Query$GetUserProfile$Viewer$favourites? favourites,
    Query$GetUserProfile$Viewer$statistics? statistics,
    String? $__typename,
  });
  CopyWith$Query$GetUserProfile$Viewer$avatar<TRes> get avatar;
  CopyWith$Query$GetUserProfile$Viewer$favourites<TRes> get favourites;
  CopyWith$Query$GetUserProfile$Viewer$statistics<TRes> get statistics;
}

class _CopyWithImpl$Query$GetUserProfile$Viewer<TRes>
    implements CopyWith$Query$GetUserProfile$Viewer<TRes> {
  _CopyWithImpl$Query$GetUserProfile$Viewer(
    this._instance,
    this._then,
  );

  final Query$GetUserProfile$Viewer _instance;

  final TRes Function(Query$GetUserProfile$Viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? about = _undefined,
    Object? siteUrl = _undefined,
    Object? avatar = _undefined,
    Object? favourites = _undefined,
    Object? statistics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserProfile$Viewer(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        about: about == _undefined ? _instance.about : (about as String?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$GetUserProfile$Viewer$avatar?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$GetUserProfile$Viewer$favourites?),
        statistics: statistics == _undefined
            ? _instance.statistics
            : (statistics as Query$GetUserProfile$Viewer$statistics?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUserProfile$Viewer$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$GetUserProfile$Viewer$avatar.stub(_then(_instance))
        : CopyWith$Query$GetUserProfile$Viewer$avatar(
            local$avatar, (e) => call(avatar: e));
  }

  CopyWith$Query$GetUserProfile$Viewer$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$GetUserProfile$Viewer$favourites.stub(_then(_instance))
        : CopyWith$Query$GetUserProfile$Viewer$favourites(
            local$favourites, (e) => call(favourites: e));
  }

  CopyWith$Query$GetUserProfile$Viewer$statistics<TRes> get statistics {
    final local$statistics = _instance.statistics;
    return local$statistics == null
        ? CopyWith$Query$GetUserProfile$Viewer$statistics.stub(_then(_instance))
        : CopyWith$Query$GetUserProfile$Viewer$statistics(
            local$statistics, (e) => call(statistics: e));
  }
}

class _CopyWithStubImpl$Query$GetUserProfile$Viewer<TRes>
    implements CopyWith$Query$GetUserProfile$Viewer<TRes> {
  _CopyWithStubImpl$Query$GetUserProfile$Viewer(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? about,
    String? siteUrl,
    Query$GetUserProfile$Viewer$avatar? avatar,
    Query$GetUserProfile$Viewer$favourites? favourites,
    Query$GetUserProfile$Viewer$statistics? statistics,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUserProfile$Viewer$avatar<TRes> get avatar =>
      CopyWith$Query$GetUserProfile$Viewer$avatar.stub(_res);

  CopyWith$Query$GetUserProfile$Viewer$favourites<TRes> get favourites =>
      CopyWith$Query$GetUserProfile$Viewer$favourites.stub(_res);

  CopyWith$Query$GetUserProfile$Viewer$statistics<TRes> get statistics =>
      CopyWith$Query$GetUserProfile$Viewer$statistics.stub(_res);
}

class Query$GetUserProfile$Viewer$avatar {
  Query$GetUserProfile$Viewer$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$GetUserProfile$Viewer$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetUserProfile$Viewer$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserProfile$Viewer$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
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

extension UtilityExtension$Query$GetUserProfile$Viewer$avatar
    on Query$GetUserProfile$Viewer$avatar {
  CopyWith$Query$GetUserProfile$Viewer$avatar<
          Query$GetUserProfile$Viewer$avatar>
      get copyWith => CopyWith$Query$GetUserProfile$Viewer$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserProfile$Viewer$avatar<TRes> {
  factory CopyWith$Query$GetUserProfile$Viewer$avatar(
    Query$GetUserProfile$Viewer$avatar instance,
    TRes Function(Query$GetUserProfile$Viewer$avatar) then,
  ) = _CopyWithImpl$Query$GetUserProfile$Viewer$avatar;

  factory CopyWith$Query$GetUserProfile$Viewer$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserProfile$Viewer$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserProfile$Viewer$avatar<TRes>
    implements CopyWith$Query$GetUserProfile$Viewer$avatar<TRes> {
  _CopyWithImpl$Query$GetUserProfile$Viewer$avatar(
    this._instance,
    this._then,
  );

  final Query$GetUserProfile$Viewer$avatar _instance;

  final TRes Function(Query$GetUserProfile$Viewer$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserProfile$Viewer$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserProfile$Viewer$avatar<TRes>
    implements CopyWith$Query$GetUserProfile$Viewer$avatar<TRes> {
  _CopyWithStubImpl$Query$GetUserProfile$Viewer$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUserProfile$Viewer$favourites {
  Query$GetUserProfile$Viewer$favourites({
    this.anime,
    this.manga,
    this.$__typename = 'Favourites',
  });

  factory Query$GetUserProfile$Viewer$favourites.fromJson(
      Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Query$GetUserProfile$Viewer$favourites(
      anime: l$anime == null
          ? null
          : Fragment$MediaFavorite.fromJson((l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Fragment$MediaFavorite.fromJson((l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaFavorite? anime;

  final Fragment$MediaFavorite? manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserProfile$Viewer$favourites) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$anime = anime;
    final lOther$anime = other.anime;
    if (l$anime != lOther$anime) {
      return false;
    }
    final l$manga = manga;
    final lOther$manga = other.manga;
    if (l$manga != lOther$manga) {
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

extension UtilityExtension$Query$GetUserProfile$Viewer$favourites
    on Query$GetUserProfile$Viewer$favourites {
  CopyWith$Query$GetUserProfile$Viewer$favourites<
          Query$GetUserProfile$Viewer$favourites>
      get copyWith => CopyWith$Query$GetUserProfile$Viewer$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserProfile$Viewer$favourites<TRes> {
  factory CopyWith$Query$GetUserProfile$Viewer$favourites(
    Query$GetUserProfile$Viewer$favourites instance,
    TRes Function(Query$GetUserProfile$Viewer$favourites) then,
  ) = _CopyWithImpl$Query$GetUserProfile$Viewer$favourites;

  factory CopyWith$Query$GetUserProfile$Viewer$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserProfile$Viewer$favourites;

  TRes call({
    Fragment$MediaFavorite? anime,
    Fragment$MediaFavorite? manga,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFavorite<TRes> get anime;
  CopyWith$Fragment$MediaFavorite<TRes> get manga;
}

class _CopyWithImpl$Query$GetUserProfile$Viewer$favourites<TRes>
    implements CopyWith$Query$GetUserProfile$Viewer$favourites<TRes> {
  _CopyWithImpl$Query$GetUserProfile$Viewer$favourites(
    this._instance,
    this._then,
  );

  final Query$GetUserProfile$Viewer$favourites _instance;

  final TRes Function(Query$GetUserProfile$Viewer$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserProfile$Viewer$favourites(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Fragment$MediaFavorite?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Fragment$MediaFavorite?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFavorite<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Fragment$MediaFavorite.stub(_then(_instance))
        : CopyWith$Fragment$MediaFavorite(local$anime, (e) => call(anime: e));
  }

  CopyWith$Fragment$MediaFavorite<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Fragment$MediaFavorite.stub(_then(_instance))
        : CopyWith$Fragment$MediaFavorite(local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Query$GetUserProfile$Viewer$favourites<TRes>
    implements CopyWith$Query$GetUserProfile$Viewer$favourites<TRes> {
  _CopyWithStubImpl$Query$GetUserProfile$Viewer$favourites(this._res);

  TRes _res;

  call({
    Fragment$MediaFavorite? anime,
    Fragment$MediaFavorite? manga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFavorite<TRes> get anime =>
      CopyWith$Fragment$MediaFavorite.stub(_res);

  CopyWith$Fragment$MediaFavorite<TRes> get manga =>
      CopyWith$Fragment$MediaFavorite.stub(_res);
}

class Query$GetUserProfile$Viewer$statistics {
  Query$GetUserProfile$Viewer$statistics({
    this.anime,
    this.manga,
    this.$__typename = 'UserStatisticTypes',
  });

  factory Query$GetUserProfile$Viewer$statistics.fromJson(
      Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Query$GetUserProfile$Viewer$statistics(
      anime: l$anime == null
          ? null
          : Fragment$UserStats.fromJson((l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Fragment$UserStats.fromJson((l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserStats? anime;

  final Fragment$UserStats? manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserProfile$Viewer$statistics) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$anime = anime;
    final lOther$anime = other.anime;
    if (l$anime != lOther$anime) {
      return false;
    }
    final l$manga = manga;
    final lOther$manga = other.manga;
    if (l$manga != lOther$manga) {
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

extension UtilityExtension$Query$GetUserProfile$Viewer$statistics
    on Query$GetUserProfile$Viewer$statistics {
  CopyWith$Query$GetUserProfile$Viewer$statistics<
          Query$GetUserProfile$Viewer$statistics>
      get copyWith => CopyWith$Query$GetUserProfile$Viewer$statistics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserProfile$Viewer$statistics<TRes> {
  factory CopyWith$Query$GetUserProfile$Viewer$statistics(
    Query$GetUserProfile$Viewer$statistics instance,
    TRes Function(Query$GetUserProfile$Viewer$statistics) then,
  ) = _CopyWithImpl$Query$GetUserProfile$Viewer$statistics;

  factory CopyWith$Query$GetUserProfile$Viewer$statistics.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserProfile$Viewer$statistics;

  TRes call({
    Fragment$UserStats? anime,
    Fragment$UserStats? manga,
    String? $__typename,
  });
  CopyWith$Fragment$UserStats<TRes> get anime;
  CopyWith$Fragment$UserStats<TRes> get manga;
}

class _CopyWithImpl$Query$GetUserProfile$Viewer$statistics<TRes>
    implements CopyWith$Query$GetUserProfile$Viewer$statistics<TRes> {
  _CopyWithImpl$Query$GetUserProfile$Viewer$statistics(
    this._instance,
    this._then,
  );

  final Query$GetUserProfile$Viewer$statistics _instance;

  final TRes Function(Query$GetUserProfile$Viewer$statistics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserProfile$Viewer$statistics(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Fragment$UserStats?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Fragment$UserStats?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserStats<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Fragment$UserStats.stub(_then(_instance))
        : CopyWith$Fragment$UserStats(local$anime, (e) => call(anime: e));
  }

  CopyWith$Fragment$UserStats<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Fragment$UserStats.stub(_then(_instance))
        : CopyWith$Fragment$UserStats(local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Query$GetUserProfile$Viewer$statistics<TRes>
    implements CopyWith$Query$GetUserProfile$Viewer$statistics<TRes> {
  _CopyWithStubImpl$Query$GetUserProfile$Viewer$statistics(this._res);

  TRes _res;

  call({
    Fragment$UserStats? anime,
    Fragment$UserStats? manga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserStats<TRes> get anime =>
      CopyWith$Fragment$UserStats.stub(_res);

  CopyWith$Fragment$UserStats<TRes> get manga =>
      CopyWith$Fragment$UserStats.stub(_res);
}
