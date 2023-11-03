import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$mediaListEntry {
  Fragment$mediaListEntry({
    required this.id,
    this.status,
    this.startedAt,
    this.completedAt,
    this.updatedAt,
    this.createdAt,
    this.progress,
    this.progressVolumes,
    this.media,
    this.$__typename = 'MediaList',
  });

  factory Fragment$mediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$startedAt = json['startedAt'];
    final l$completedAt = json['completedAt'];
    final l$updatedAt = json['updatedAt'];
    final l$createdAt = json['createdAt'];
    final l$progress = json['progress'];
    final l$progressVolumes = json['progressVolumes'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$mediaListEntry(
      id: (l$id as int),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      startedAt: l$startedAt == null
          ? null
          : Fragment$date.fromJson((l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : Fragment$date.fromJson((l$completedAt as Map<String, dynamic>)),
      updatedAt: (l$updatedAt as int?),
      createdAt: (l$createdAt as int?),
      progress: (l$progress as int?),
      progressVolumes: (l$progressVolumes as int?),
      media: l$media == null
          ? null
          : Fragment$mediaListEntry$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$MediaListStatus? status;

  final Fragment$date? startedAt;

  final Fragment$date? completedAt;

  final int? updatedAt;

  final int? createdAt;

  final int? progress;

  final int? progressVolumes;

  final Fragment$mediaListEntry$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$startedAt = startedAt;
    _resultData['startedAt'] = l$startedAt?.toJson();
    final l$completedAt = completedAt;
    _resultData['completedAt'] = l$completedAt?.toJson();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$progressVolumes = progressVolumes;
    _resultData['progressVolumes'] = l$progressVolumes;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    final l$updatedAt = updatedAt;
    final l$createdAt = createdAt;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$startedAt,
      l$completedAt,
      l$updatedAt,
      l$createdAt,
      l$progress,
      l$progressVolumes,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$mediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$completedAt = completedAt;
    final lOther$completedAt = other.completedAt;
    if (l$completedAt != lOther$completedAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$progressVolumes = progressVolumes;
    final lOther$progressVolumes = other.progressVolumes;
    if (l$progressVolumes != lOther$progressVolumes) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Fragment$mediaListEntry on Fragment$mediaListEntry {
  CopyWith$Fragment$mediaListEntry<Fragment$mediaListEntry> get copyWith =>
      CopyWith$Fragment$mediaListEntry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$mediaListEntry<TRes> {
  factory CopyWith$Fragment$mediaListEntry(
    Fragment$mediaListEntry instance,
    TRes Function(Fragment$mediaListEntry) then,
  ) = _CopyWithImpl$Fragment$mediaListEntry;

  factory CopyWith$Fragment$mediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$mediaListEntry;

  TRes call({
    int? id,
    Enum$MediaListStatus? status,
    Fragment$date? startedAt,
    Fragment$date? completedAt,
    int? updatedAt,
    int? createdAt,
    int? progress,
    int? progressVolumes,
    Fragment$mediaListEntry$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$date<TRes> get startedAt;
  CopyWith$Fragment$date<TRes> get completedAt;
  CopyWith$Fragment$mediaListEntry$media<TRes> get media;
}

class _CopyWithImpl$Fragment$mediaListEntry<TRes>
    implements CopyWith$Fragment$mediaListEntry<TRes> {
  _CopyWithImpl$Fragment$mediaListEntry(
    this._instance,
    this._then,
  );

  final Fragment$mediaListEntry _instance;

  final TRes Function(Fragment$mediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
    Object? updatedAt = _undefined,
    Object? createdAt = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$mediaListEntry(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as Fragment$date?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt as Fragment$date?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        progressVolumes: progressVolumes == _undefined
            ? _instance.progressVolumes
            : (progressVolumes as int?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$mediaListEntry$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$date<TRes> get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWith$Fragment$date.stub(_then(_instance))
        : CopyWith$Fragment$date(local$startedAt, (e) => call(startedAt: e));
  }

  CopyWith$Fragment$date<TRes> get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWith$Fragment$date.stub(_then(_instance))
        : CopyWith$Fragment$date(
            local$completedAt, (e) => call(completedAt: e));
  }

  CopyWith$Fragment$mediaListEntry$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$mediaListEntry$media.stub(_then(_instance))
        : CopyWith$Fragment$mediaListEntry$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$mediaListEntry<TRes>
    implements CopyWith$Fragment$mediaListEntry<TRes> {
  _CopyWithStubImpl$Fragment$mediaListEntry(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaListStatus? status,
    Fragment$date? startedAt,
    Fragment$date? completedAt,
    int? updatedAt,
    int? createdAt,
    int? progress,
    int? progressVolumes,
    Fragment$mediaListEntry$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$date<TRes> get startedAt =>
      CopyWith$Fragment$date.stub(_res);

  CopyWith$Fragment$date<TRes> get completedAt =>
      CopyWith$Fragment$date.stub(_res);

  CopyWith$Fragment$mediaListEntry$media<TRes> get media =>
      CopyWith$Fragment$mediaListEntry$media.stub(_res);
}

const fragmentDefinitionmediaListEntry = FragmentDefinitionNode(
  name: NameNode(value: 'mediaListEntry'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MediaList'),
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
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'date'),
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
      name: NameNode(value: 'completedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'date'),
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
      name: NameNode(value: 'updatedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'progress'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'progressVolumes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'media'),
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
          name: NameNode(value: 'episodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chapters'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'volumes'),
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
const documentNodeFragmentmediaListEntry = DocumentNode(definitions: [
  fragmentDefinitionmediaListEntry,
  fragmentDefinitiondate,
]);

extension ClientExtension$Fragment$mediaListEntry on graphql.GraphQLClient {
  void writeFragment$mediaListEntry({
    required Fragment$mediaListEntry data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'mediaListEntry',
            document: documentNodeFragmentmediaListEntry,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$mediaListEntry? readFragment$mediaListEntry({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'mediaListEntry',
          document: documentNodeFragmentmediaListEntry,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$mediaListEntry.fromJson(result);
  }
}

class Fragment$mediaListEntry$media {
  Fragment$mediaListEntry$media({
    required this.id,
    this.type,
    this.episodes,
    this.chapters,
    this.volumes,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$mediaListEntry$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$volumes = json['volumes'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$mediaListEntry$media(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      volumes: (l$volumes as int?),
      title: l$title == null
          ? null
          : Fragment$mediaListEntry$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$mediaListEntry$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$MediaType? type;

  final int? episodes;

  final int? chapters;

  final int? volumes;

  final Fragment$mediaListEntry$media$title? title;

  final Fragment$mediaListEntry$media$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$volumes = volumes;
    _resultData['volumes'] = l$volumes;
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
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$volumes = volumes;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$episodes,
      l$chapters,
      l$volumes,
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
    if (!(other is Fragment$mediaListEntry$media) ||
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
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
      return false;
    }
    final l$volumes = volumes;
    final lOther$volumes = other.volumes;
    if (l$volumes != lOther$volumes) {
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

extension UtilityExtension$Fragment$mediaListEntry$media
    on Fragment$mediaListEntry$media {
  CopyWith$Fragment$mediaListEntry$media<Fragment$mediaListEntry$media>
      get copyWith => CopyWith$Fragment$mediaListEntry$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$mediaListEntry$media<TRes> {
  factory CopyWith$Fragment$mediaListEntry$media(
    Fragment$mediaListEntry$media instance,
    TRes Function(Fragment$mediaListEntry$media) then,
  ) = _CopyWithImpl$Fragment$mediaListEntry$media;

  factory CopyWith$Fragment$mediaListEntry$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$mediaListEntry$media;

  TRes call({
    int? id,
    Enum$MediaType? type,
    int? episodes,
    int? chapters,
    int? volumes,
    Fragment$mediaListEntry$media$title? title,
    Fragment$mediaListEntry$media$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$mediaListEntry$media$title<TRes> get title;
  CopyWith$Fragment$mediaListEntry$media$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Fragment$mediaListEntry$media<TRes>
    implements CopyWith$Fragment$mediaListEntry$media<TRes> {
  _CopyWithImpl$Fragment$mediaListEntry$media(
    this._instance,
    this._then,
  );

  final Fragment$mediaListEntry$media _instance;

  final TRes Function(Fragment$mediaListEntry$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? volumes = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$mediaListEntry$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        volumes: volumes == _undefined ? _instance.volumes : (volumes as int?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$mediaListEntry$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$mediaListEntry$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$mediaListEntry$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$mediaListEntry$media$title.stub(_then(_instance))
        : CopyWith$Fragment$mediaListEntry$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$mediaListEntry$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$mediaListEntry$media$coverImage.stub(
            _then(_instance))
        : CopyWith$Fragment$mediaListEntry$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$mediaListEntry$media<TRes>
    implements CopyWith$Fragment$mediaListEntry$media<TRes> {
  _CopyWithStubImpl$Fragment$mediaListEntry$media(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    int? episodes,
    int? chapters,
    int? volumes,
    Fragment$mediaListEntry$media$title? title,
    Fragment$mediaListEntry$media$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$mediaListEntry$media$title<TRes> get title =>
      CopyWith$Fragment$mediaListEntry$media$title.stub(_res);

  CopyWith$Fragment$mediaListEntry$media$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$mediaListEntry$media$coverImage.stub(_res);
}

class Fragment$mediaListEntry$media$title {
  Fragment$mediaListEntry$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$mediaListEntry$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$mediaListEntry$media$title(
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
    if (!(other is Fragment$mediaListEntry$media$title) ||
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

extension UtilityExtension$Fragment$mediaListEntry$media$title
    on Fragment$mediaListEntry$media$title {
  CopyWith$Fragment$mediaListEntry$media$title<
          Fragment$mediaListEntry$media$title>
      get copyWith => CopyWith$Fragment$mediaListEntry$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$mediaListEntry$media$title<TRes> {
  factory CopyWith$Fragment$mediaListEntry$media$title(
    Fragment$mediaListEntry$media$title instance,
    TRes Function(Fragment$mediaListEntry$media$title) then,
  ) = _CopyWithImpl$Fragment$mediaListEntry$media$title;

  factory CopyWith$Fragment$mediaListEntry$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$mediaListEntry$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$mediaListEntry$media$title<TRes>
    implements CopyWith$Fragment$mediaListEntry$media$title<TRes> {
  _CopyWithImpl$Fragment$mediaListEntry$media$title(
    this._instance,
    this._then,
  );

  final Fragment$mediaListEntry$media$title _instance;

  final TRes Function(Fragment$mediaListEntry$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$mediaListEntry$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$mediaListEntry$media$title<TRes>
    implements CopyWith$Fragment$mediaListEntry$media$title<TRes> {
  _CopyWithStubImpl$Fragment$mediaListEntry$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$mediaListEntry$media$coverImage {
  Fragment$mediaListEntry$media$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$mediaListEntry$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$mediaListEntry$media$coverImage(
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
    if (!(other is Fragment$mediaListEntry$media$coverImage) ||
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

extension UtilityExtension$Fragment$mediaListEntry$media$coverImage
    on Fragment$mediaListEntry$media$coverImage {
  CopyWith$Fragment$mediaListEntry$media$coverImage<
          Fragment$mediaListEntry$media$coverImage>
      get copyWith => CopyWith$Fragment$mediaListEntry$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$mediaListEntry$media$coverImage<TRes> {
  factory CopyWith$Fragment$mediaListEntry$media$coverImage(
    Fragment$mediaListEntry$media$coverImage instance,
    TRes Function(Fragment$mediaListEntry$media$coverImage) then,
  ) = _CopyWithImpl$Fragment$mediaListEntry$media$coverImage;

  factory CopyWith$Fragment$mediaListEntry$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$mediaListEntry$media$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$mediaListEntry$media$coverImage<TRes>
    implements CopyWith$Fragment$mediaListEntry$media$coverImage<TRes> {
  _CopyWithImpl$Fragment$mediaListEntry$media$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$mediaListEntry$media$coverImage _instance;

  final TRes Function(Fragment$mediaListEntry$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$mediaListEntry$media$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$mediaListEntry$media$coverImage<TRes>
    implements CopyWith$Fragment$mediaListEntry$media$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$mediaListEntry$media$coverImage(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$date {
  Fragment$date({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$date.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Fragment$date(
      year: (l$year as int?),
      month: (l$month as int?),
      day: (l$day as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? month;

  final int? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$month = month;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$month,
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$date) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtension$Fragment$date on Fragment$date {
  CopyWith$Fragment$date<Fragment$date> get copyWith => CopyWith$Fragment$date(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$date<TRes> {
  factory CopyWith$Fragment$date(
    Fragment$date instance,
    TRes Function(Fragment$date) then,
  ) = _CopyWithImpl$Fragment$date;

  factory CopyWith$Fragment$date.stub(TRes res) =
      _CopyWithStubImpl$Fragment$date;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$date<TRes>
    implements CopyWith$Fragment$date<TRes> {
  _CopyWithImpl$Fragment$date(
    this._instance,
    this._then,
  );

  final Fragment$date _instance;

  final TRes Function(Fragment$date) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$date(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$date<TRes>
    implements CopyWith$Fragment$date<TRes> {
  _CopyWithStubImpl$Fragment$date(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitiondate = FragmentDefinitionNode(
  name: NameNode(value: 'date'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'FuzzyDate'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'year'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'month'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'day'),
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
);
const documentNodeFragmentdate = DocumentNode(definitions: [
  fragmentDefinitiondate,
]);

extension ClientExtension$Fragment$date on graphql.GraphQLClient {
  void writeFragment$date({
    required Fragment$date data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'date',
            document: documentNodeFragmentdate,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$date? readFragment$date({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'date',
          document: documentNodeFragmentdate,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$date.fromJson(result);
  }
}

class Variables$Query$GetMediaList {
  factory Variables$Query$GetMediaList({
    int? userId,
    Enum$MediaType? type,
    int? chunk,
    int? perChunk,
  }) =>
      Variables$Query$GetMediaList._({
        if (userId != null) r'userId': userId,
        if (type != null) r'type': type,
        if (chunk != null) r'chunk': chunk,
        if (perChunk != null) r'perChunk': perChunk,
      });

  Variables$Query$GetMediaList._(this._$data);

  factory Variables$Query$GetMediaList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    if (data.containsKey('chunk')) {
      final l$chunk = data['chunk'];
      result$data['chunk'] = (l$chunk as int?);
    }
    if (data.containsKey('perChunk')) {
      final l$perChunk = data['perChunk'];
      result$data['perChunk'] = (l$perChunk as int?);
    }
    return Variables$Query$GetMediaList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  int? get chunk => (_$data['chunk'] as int?);

  int? get perChunk => (_$data['perChunk'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    if (_$data.containsKey('chunk')) {
      final l$chunk = chunk;
      result$data['chunk'] = l$chunk;
    }
    if (_$data.containsKey('perChunk')) {
      final l$perChunk = perChunk;
      result$data['perChunk'] = l$perChunk;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetMediaList<Variables$Query$GetMediaList>
      get copyWith => CopyWith$Variables$Query$GetMediaList(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetMediaList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$chunk = chunk;
    final lOther$chunk = other.chunk;
    if (_$data.containsKey('chunk') != other._$data.containsKey('chunk')) {
      return false;
    }
    if (l$chunk != lOther$chunk) {
      return false;
    }
    final l$perChunk = perChunk;
    final lOther$perChunk = other.perChunk;
    if (_$data.containsKey('perChunk') !=
        other._$data.containsKey('perChunk')) {
      return false;
    }
    if (l$perChunk != lOther$perChunk) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$type = type;
    final l$chunk = chunk;
    final l$perChunk = perChunk;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('chunk') ? l$chunk : const {},
      _$data.containsKey('perChunk') ? l$perChunk : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetMediaList<TRes> {
  factory CopyWith$Variables$Query$GetMediaList(
    Variables$Query$GetMediaList instance,
    TRes Function(Variables$Query$GetMediaList) then,
  ) = _CopyWithImpl$Variables$Query$GetMediaList;

  factory CopyWith$Variables$Query$GetMediaList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMediaList;

  TRes call({
    int? userId,
    Enum$MediaType? type,
    int? chunk,
    int? perChunk,
  });
}

class _CopyWithImpl$Variables$Query$GetMediaList<TRes>
    implements CopyWith$Variables$Query$GetMediaList<TRes> {
  _CopyWithImpl$Variables$Query$GetMediaList(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMediaList _instance;

  final TRes Function(Variables$Query$GetMediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? chunk = _undefined,
    Object? perChunk = _undefined,
  }) =>
      _then(Variables$Query$GetMediaList._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (chunk != _undefined) 'chunk': (chunk as int?),
        if (perChunk != _undefined) 'perChunk': (perChunk as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetMediaList<TRes>
    implements CopyWith$Variables$Query$GetMediaList<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMediaList(this._res);

  TRes _res;

  call({
    int? userId,
    Enum$MediaType? type,
    int? chunk,
    int? perChunk,
  }) =>
      _res;
}

class Query$GetMediaList {
  Query$GetMediaList({
    this.MediaListCollection,
    this.$__typename = 'Query',
  });

  factory Query$GetMediaList.fromJson(Map<String, dynamic> json) {
    final l$MediaListCollection = json['MediaListCollection'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaList(
      MediaListCollection: l$MediaListCollection == null
          ? null
          : Query$GetMediaList$MediaListCollection.fromJson(
              (l$MediaListCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMediaList$MediaListCollection? MediaListCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$MediaListCollection = MediaListCollection;
    _resultData['MediaListCollection'] = l$MediaListCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$MediaListCollection = MediaListCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$MediaListCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$MediaListCollection = MediaListCollection;
    final lOther$MediaListCollection = other.MediaListCollection;
    if (l$MediaListCollection != lOther$MediaListCollection) {
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

extension UtilityExtension$Query$GetMediaList on Query$GetMediaList {
  CopyWith$Query$GetMediaList<Query$GetMediaList> get copyWith =>
      CopyWith$Query$GetMediaList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMediaList<TRes> {
  factory CopyWith$Query$GetMediaList(
    Query$GetMediaList instance,
    TRes Function(Query$GetMediaList) then,
  ) = _CopyWithImpl$Query$GetMediaList;

  factory CopyWith$Query$GetMediaList.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaList;

  TRes call({
    Query$GetMediaList$MediaListCollection? MediaListCollection,
    String? $__typename,
  });
  CopyWith$Query$GetMediaList$MediaListCollection<TRes> get MediaListCollection;
}

class _CopyWithImpl$Query$GetMediaList<TRes>
    implements CopyWith$Query$GetMediaList<TRes> {
  _CopyWithImpl$Query$GetMediaList(
    this._instance,
    this._then,
  );

  final Query$GetMediaList _instance;

  final TRes Function(Query$GetMediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MediaListCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaList(
        MediaListCollection: MediaListCollection == _undefined
            ? _instance.MediaListCollection
            : (MediaListCollection as Query$GetMediaList$MediaListCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMediaList$MediaListCollection<TRes>
      get MediaListCollection {
    final local$MediaListCollection = _instance.MediaListCollection;
    return local$MediaListCollection == null
        ? CopyWith$Query$GetMediaList$MediaListCollection.stub(_then(_instance))
        : CopyWith$Query$GetMediaList$MediaListCollection(
            local$MediaListCollection, (e) => call(MediaListCollection: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaList<TRes>
    implements CopyWith$Query$GetMediaList<TRes> {
  _CopyWithStubImpl$Query$GetMediaList(this._res);

  TRes _res;

  call({
    Query$GetMediaList$MediaListCollection? MediaListCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMediaList$MediaListCollection<TRes>
      get MediaListCollection =>
          CopyWith$Query$GetMediaList$MediaListCollection.stub(_res);
}

const documentNodeQueryGetMediaList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMediaList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'chunk')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perChunk')),
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
        name: NameNode(value: 'MediaListCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'type')),
          ),
          ArgumentNode(
            name: NameNode(value: 'chunk'),
            value: VariableNode(name: NameNode(value: 'chunk')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perChunk'),
            value: VariableNode(name: NameNode(value: 'perChunk')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'hasNextChunk'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lists'),
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
                name: NameNode(value: 'status'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isCustomList'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isSplitCompletedList'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'entries'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'mediaListEntry'),
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
  fragmentDefinitionmediaListEntry,
  fragmentDefinitiondate,
]);
Query$GetMediaList _parserFn$Query$GetMediaList(Map<String, dynamic> data) =>
    Query$GetMediaList.fromJson(data);
typedef OnQueryComplete$Query$GetMediaList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMediaList?,
);

class Options$Query$GetMediaList
    extends graphql.QueryOptions<Query$GetMediaList> {
  Options$Query$GetMediaList({
    String? operationName,
    Variables$Query$GetMediaList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMediaList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMediaList? onComplete,
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
                    data == null ? null : _parserFn$Query$GetMediaList(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMediaList,
          parserFn: _parserFn$Query$GetMediaList,
        );

  final OnQueryComplete$Query$GetMediaList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMediaList
    extends graphql.WatchQueryOptions<Query$GetMediaList> {
  WatchOptions$Query$GetMediaList({
    String? operationName,
    Variables$Query$GetMediaList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMediaList? typedOptimisticResult,
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
          document: documentNodeQueryGetMediaList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMediaList,
        );
}

class FetchMoreOptions$Query$GetMediaList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMediaList({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetMediaList? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetMediaList,
        );
}

extension ClientExtension$Query$GetMediaList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMediaList>> query$GetMediaList(
          [Options$Query$GetMediaList? options]) async =>
      await this.query(options ?? Options$Query$GetMediaList());
  graphql.ObservableQuery<Query$GetMediaList> watchQuery$GetMediaList(
          [WatchOptions$Query$GetMediaList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetMediaList());
  void writeQuery$GetMediaList({
    required Query$GetMediaList data,
    Variables$Query$GetMediaList? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetMediaList),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMediaList? readQuery$GetMediaList({
    Variables$Query$GetMediaList? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetMediaList),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMediaList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMediaList> useQuery$GetMediaList(
        [Options$Query$GetMediaList? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetMediaList());
graphql.ObservableQuery<Query$GetMediaList> useWatchQuery$GetMediaList(
        [WatchOptions$Query$GetMediaList? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetMediaList());

class Query$GetMediaList$Widget
    extends graphql_flutter.Query<Query$GetMediaList> {
  Query$GetMediaList$Widget({
    widgets.Key? key,
    Options$Query$GetMediaList? options,
    required graphql_flutter.QueryBuilder<Query$GetMediaList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMediaList(),
          builder: builder,
        );
}

class Query$GetMediaList$MediaListCollection {
  Query$GetMediaList$MediaListCollection({
    this.hasNextChunk,
    this.lists,
    this.$__typename = 'MediaListCollection',
  });

  factory Query$GetMediaList$MediaListCollection.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextChunk = json['hasNextChunk'];
    final l$lists = json['lists'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaList$MediaListCollection(
      hasNextChunk: (l$hasNextChunk as bool?),
      lists: (l$lists as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetMediaList$MediaListCollection$lists.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? hasNextChunk;

  final List<Query$GetMediaList$MediaListCollection$lists?>? lists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextChunk = hasNextChunk;
    _resultData['hasNextChunk'] = l$hasNextChunk;
    final l$lists = lists;
    _resultData['lists'] = l$lists?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextChunk = hasNextChunk;
    final l$lists = lists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextChunk,
      l$lists == null ? null : Object.hashAll(l$lists.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaList$MediaListCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextChunk = hasNextChunk;
    final lOther$hasNextChunk = other.hasNextChunk;
    if (l$hasNextChunk != lOther$hasNextChunk) {
      return false;
    }
    final l$lists = lists;
    final lOther$lists = other.lists;
    if (l$lists != null && lOther$lists != null) {
      if (l$lists.length != lOther$lists.length) {
        return false;
      }
      for (int i = 0; i < l$lists.length; i++) {
        final l$lists$entry = l$lists[i];
        final lOther$lists$entry = lOther$lists[i];
        if (l$lists$entry != lOther$lists$entry) {
          return false;
        }
      }
    } else if (l$lists != lOther$lists) {
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

extension UtilityExtension$Query$GetMediaList$MediaListCollection
    on Query$GetMediaList$MediaListCollection {
  CopyWith$Query$GetMediaList$MediaListCollection<
          Query$GetMediaList$MediaListCollection>
      get copyWith => CopyWith$Query$GetMediaList$MediaListCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaList$MediaListCollection<TRes> {
  factory CopyWith$Query$GetMediaList$MediaListCollection(
    Query$GetMediaList$MediaListCollection instance,
    TRes Function(Query$GetMediaList$MediaListCollection) then,
  ) = _CopyWithImpl$Query$GetMediaList$MediaListCollection;

  factory CopyWith$Query$GetMediaList$MediaListCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaList$MediaListCollection;

  TRes call({
    bool? hasNextChunk,
    List<Query$GetMediaList$MediaListCollection$lists?>? lists,
    String? $__typename,
  });
  TRes lists(
      Iterable<Query$GetMediaList$MediaListCollection$lists?>? Function(
              Iterable<
                  CopyWith$Query$GetMediaList$MediaListCollection$lists<
                      Query$GetMediaList$MediaListCollection$lists>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetMediaList$MediaListCollection<TRes>
    implements CopyWith$Query$GetMediaList$MediaListCollection<TRes> {
  _CopyWithImpl$Query$GetMediaList$MediaListCollection(
    this._instance,
    this._then,
  );

  final Query$GetMediaList$MediaListCollection _instance;

  final TRes Function(Query$GetMediaList$MediaListCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextChunk = _undefined,
    Object? lists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaList$MediaListCollection(
        hasNextChunk: hasNextChunk == _undefined
            ? _instance.hasNextChunk
            : (hasNextChunk as bool?),
        lists: lists == _undefined
            ? _instance.lists
            : (lists as List<Query$GetMediaList$MediaListCollection$lists?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes lists(
          Iterable<Query$GetMediaList$MediaListCollection$lists?>? Function(
                  Iterable<
                      CopyWith$Query$GetMediaList$MediaListCollection$lists<
                          Query$GetMediaList$MediaListCollection$lists>?>?)
              _fn) =>
      call(
          lists: _fn(_instance.lists?.map((e) => e == null
              ? null
              : CopyWith$Query$GetMediaList$MediaListCollection$lists(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetMediaList$MediaListCollection<TRes>
    implements CopyWith$Query$GetMediaList$MediaListCollection<TRes> {
  _CopyWithStubImpl$Query$GetMediaList$MediaListCollection(this._res);

  TRes _res;

  call({
    bool? hasNextChunk,
    List<Query$GetMediaList$MediaListCollection$lists?>? lists,
    String? $__typename,
  }) =>
      _res;

  lists(_fn) => _res;
}

class Query$GetMediaList$MediaListCollection$lists {
  Query$GetMediaList$MediaListCollection$lists({
    this.name,
    this.status,
    this.isCustomList,
    this.isSplitCompletedList,
    this.entries,
    this.$__typename = 'MediaListGroup',
  });

  factory Query$GetMediaList$MediaListCollection$lists.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$status = json['status'];
    final l$isCustomList = json['isCustomList'];
    final l$isSplitCompletedList = json['isSplitCompletedList'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaList$MediaListCollection$lists(
      name: (l$name as String?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      isCustomList: (l$isCustomList as bool?),
      isSplitCompletedList: (l$isSplitCompletedList as bool?),
      entries: (l$entries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$mediaListEntry.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final Enum$MediaListStatus? status;

  final bool? isCustomList;

  final bool? isSplitCompletedList;

  final List<Fragment$mediaListEntry?>? entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$isCustomList = isCustomList;
    _resultData['isCustomList'] = l$isCustomList;
    final l$isSplitCompletedList = isSplitCompletedList;
    _resultData['isSplitCompletedList'] = l$isSplitCompletedList;
    final l$entries = entries;
    _resultData['entries'] = l$entries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$status = status;
    final l$isCustomList = isCustomList;
    final l$isSplitCompletedList = isSplitCompletedList;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$status,
      l$isCustomList,
      l$isSplitCompletedList,
      l$entries == null ? null : Object.hashAll(l$entries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaList$MediaListCollection$lists) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$isCustomList = isCustomList;
    final lOther$isCustomList = other.isCustomList;
    if (l$isCustomList != lOther$isCustomList) {
      return false;
    }
    final l$isSplitCompletedList = isSplitCompletedList;
    final lOther$isSplitCompletedList = other.isSplitCompletedList;
    if (l$isSplitCompletedList != lOther$isSplitCompletedList) {
      return false;
    }
    final l$entries = entries;
    final lOther$entries = other.entries;
    if (l$entries != null && lOther$entries != null) {
      if (l$entries.length != lOther$entries.length) {
        return false;
      }
      for (int i = 0; i < l$entries.length; i++) {
        final l$entries$entry = l$entries[i];
        final lOther$entries$entry = lOther$entries[i];
        if (l$entries$entry != lOther$entries$entry) {
          return false;
        }
      }
    } else if (l$entries != lOther$entries) {
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

extension UtilityExtension$Query$GetMediaList$MediaListCollection$lists
    on Query$GetMediaList$MediaListCollection$lists {
  CopyWith$Query$GetMediaList$MediaListCollection$lists<
          Query$GetMediaList$MediaListCollection$lists>
      get copyWith => CopyWith$Query$GetMediaList$MediaListCollection$lists(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaList$MediaListCollection$lists<TRes> {
  factory CopyWith$Query$GetMediaList$MediaListCollection$lists(
    Query$GetMediaList$MediaListCollection$lists instance,
    TRes Function(Query$GetMediaList$MediaListCollection$lists) then,
  ) = _CopyWithImpl$Query$GetMediaList$MediaListCollection$lists;

  factory CopyWith$Query$GetMediaList$MediaListCollection$lists.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaList$MediaListCollection$lists;

  TRes call({
    String? name,
    Enum$MediaListStatus? status,
    bool? isCustomList,
    bool? isSplitCompletedList,
    List<Fragment$mediaListEntry?>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<Fragment$mediaListEntry?>? Function(
              Iterable<
                  CopyWith$Fragment$mediaListEntry<Fragment$mediaListEntry>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetMediaList$MediaListCollection$lists<TRes>
    implements CopyWith$Query$GetMediaList$MediaListCollection$lists<TRes> {
  _CopyWithImpl$Query$GetMediaList$MediaListCollection$lists(
    this._instance,
    this._then,
  );

  final Query$GetMediaList$MediaListCollection$lists _instance;

  final TRes Function(Query$GetMediaList$MediaListCollection$lists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? status = _undefined,
    Object? isCustomList = _undefined,
    Object? isSplitCompletedList = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaList$MediaListCollection$lists(
        name: name == _undefined ? _instance.name : (name as String?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        isCustomList: isCustomList == _undefined
            ? _instance.isCustomList
            : (isCustomList as bool?),
        isSplitCompletedList: isSplitCompletedList == _undefined
            ? _instance.isSplitCompletedList
            : (isSplitCompletedList as bool?),
        entries: entries == _undefined
            ? _instance.entries
            : (entries as List<Fragment$mediaListEntry?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes entries(
          Iterable<Fragment$mediaListEntry?>? Function(
                  Iterable<
                      CopyWith$Fragment$mediaListEntry<
                          Fragment$mediaListEntry>?>?)
              _fn) =>
      call(
          entries: _fn(_instance.entries?.map((e) => e == null
              ? null
              : CopyWith$Fragment$mediaListEntry(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetMediaList$MediaListCollection$lists<TRes>
    implements CopyWith$Query$GetMediaList$MediaListCollection$lists<TRes> {
  _CopyWithStubImpl$Query$GetMediaList$MediaListCollection$lists(this._res);

  TRes _res;

  call({
    String? name,
    Enum$MediaListStatus? status,
    bool? isCustomList,
    bool? isSplitCompletedList,
    List<Fragment$mediaListEntry?>? entries,
    String? $__typename,
  }) =>
      _res;

  entries(_fn) => _res;
}
