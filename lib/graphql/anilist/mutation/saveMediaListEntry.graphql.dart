import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$EntrySave {
  Fragment$EntrySave({
    required this.id,
    this.mediaListEntry,
    this.$__typename = 'Media',
  });

  factory Fragment$EntrySave.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mediaListEntry = json['mediaListEntry'];
    final l$$__typename = json['__typename'];
    return Fragment$EntrySave(
      id: (l$id as int),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : Fragment$EntrySave$mediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$EntrySave$mediaListEntry? mediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$mediaListEntry = mediaListEntry;
    resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mediaListEntry = mediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$mediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$EntrySave || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mediaListEntry = mediaListEntry;
    final lOther$mediaListEntry = other.mediaListEntry;
    if (l$mediaListEntry != lOther$mediaListEntry) {
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

extension UtilityExtension$Fragment$EntrySave on Fragment$EntrySave {
  CopyWith$Fragment$EntrySave<Fragment$EntrySave> get copyWith =>
      CopyWith$Fragment$EntrySave(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$EntrySave<TRes> {
  factory CopyWith$Fragment$EntrySave(
    Fragment$EntrySave instance,
    TRes Function(Fragment$EntrySave) then,
  ) = _CopyWithImpl$Fragment$EntrySave;

  factory CopyWith$Fragment$EntrySave.stub(TRes res) =
      _CopyWithStubImpl$Fragment$EntrySave;

  TRes call({
    int? id,
    Fragment$EntrySave$mediaListEntry? mediaListEntry,
    String? $__typename,
  });
  CopyWith$Fragment$EntrySave$mediaListEntry<TRes> get mediaListEntry;
}

class _CopyWithImpl$Fragment$EntrySave<TRes>
    implements CopyWith$Fragment$EntrySave<TRes> {
  _CopyWithImpl$Fragment$EntrySave(
    this._instance,
    this._then,
  );

  final Fragment$EntrySave _instance;

  final TRes Function(Fragment$EntrySave) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? mediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$EntrySave(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry as Fragment$EntrySave$mediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$EntrySave$mediaListEntry<TRes> get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWith$Fragment$EntrySave$mediaListEntry.stub(_then(_instance))
        : CopyWith$Fragment$EntrySave$mediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImpl$Fragment$EntrySave<TRes>
    implements CopyWith$Fragment$EntrySave<TRes> {
  _CopyWithStubImpl$Fragment$EntrySave(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    Fragment$EntrySave$mediaListEntry? mediaListEntry,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$EntrySave$mediaListEntry<TRes> get mediaListEntry =>
      CopyWith$Fragment$EntrySave$mediaListEntry.stub(_res);
}

const fragmentDefinitionEntrySave = FragmentDefinitionNode(
  name: NameNode(value: 'EntrySave'),
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
      name: NameNode(value: 'mediaListEntry'),
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
          name: NameNode(value: 'mediaId'),
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
          name: NameNode(value: 'notes'),
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
        ),
        FieldNode(
          name: NameNode(value: 'completedAt'),
          alias: null,
          arguments: [],
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
const documentNodeFragmentEntrySave = DocumentNode(definitions: [
  fragmentDefinitionEntrySave,
]);

extension ClientExtension$Fragment$EntrySave on graphql.GraphQLClient {
  void writeFragment$EntrySave({
    required Fragment$EntrySave data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'EntrySave',
            document: documentNodeFragmentEntrySave,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$EntrySave? readFragment$EntrySave({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'EntrySave',
          document: documentNodeFragmentEntrySave,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$EntrySave.fromJson(result);
  }
}

class Fragment$EntrySave$mediaListEntry {
  Fragment$EntrySave$mediaListEntry({
    required this.id,
    required this.mediaId,
    this.status,
    this.progress,
    this.progressVolumes,
    this.notes,
    this.startedAt,
    this.completedAt,
    this.updatedAt,
    this.createdAt,
    this.$__typename = 'MediaList',
  });

  factory Fragment$EntrySave$mediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mediaId = json['mediaId'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$progressVolumes = json['progressVolumes'];
    final l$notes = json['notes'];
    final l$startedAt = json['startedAt'];
    final l$completedAt = json['completedAt'];
    final l$updatedAt = json['updatedAt'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$EntrySave$mediaListEntry(
      id: (l$id as int),
      mediaId: (l$mediaId as int),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      progress: (l$progress as int?),
      progressVolumes: (l$progressVolumes as int?),
      notes: (l$notes as String?),
      startedAt: l$startedAt == null
          ? null
          : Fragment$EntrySave$mediaListEntry$startedAt.fromJson(
              (l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : Fragment$EntrySave$mediaListEntry$completedAt.fromJson(
              (l$completedAt as Map<String, dynamic>)),
      updatedAt: (l$updatedAt as int?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int mediaId;

  final Enum$MediaListStatus? status;

  final int? progress;

  final int? progressVolumes;

  final String? notes;

  final Fragment$EntrySave$mediaListEntry$startedAt? startedAt;

  final Fragment$EntrySave$mediaListEntry$completedAt? completedAt;

  final int? updatedAt;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$mediaId = mediaId;
    resultData['mediaId'] = l$mediaId;
    final l$status = status;
    resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$progress = progress;
    resultData['progress'] = l$progress;
    final l$progressVolumes = progressVolumes;
    resultData['progressVolumes'] = l$progressVolumes;
    final l$notes = notes;
    resultData['notes'] = l$notes;
    final l$startedAt = startedAt;
    resultData['startedAt'] = l$startedAt?.toJson();
    final l$completedAt = completedAt;
    resultData['completedAt'] = l$completedAt?.toJson();
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mediaId = mediaId;
    final l$status = status;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$notes = notes;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    final l$updatedAt = updatedAt;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$mediaId,
      l$status,
      l$progress,
      l$progressVolumes,
      l$notes,
      l$startedAt,
      l$completedAt,
      l$updatedAt,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$EntrySave$mediaListEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$EntrySave$mediaListEntry
    on Fragment$EntrySave$mediaListEntry {
  CopyWith$Fragment$EntrySave$mediaListEntry<Fragment$EntrySave$mediaListEntry>
      get copyWith => CopyWith$Fragment$EntrySave$mediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$EntrySave$mediaListEntry<TRes> {
  factory CopyWith$Fragment$EntrySave$mediaListEntry(
    Fragment$EntrySave$mediaListEntry instance,
    TRes Function(Fragment$EntrySave$mediaListEntry) then,
  ) = _CopyWithImpl$Fragment$EntrySave$mediaListEntry;

  factory CopyWith$Fragment$EntrySave$mediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$EntrySave$mediaListEntry;

  TRes call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    int? progress,
    int? progressVolumes,
    String? notes,
    Fragment$EntrySave$mediaListEntry$startedAt? startedAt,
    Fragment$EntrySave$mediaListEntry$completedAt? completedAt,
    int? updatedAt,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$EntrySave$mediaListEntry$startedAt<TRes> get startedAt;
  CopyWith$Fragment$EntrySave$mediaListEntry$completedAt<TRes> get completedAt;
}

class _CopyWithImpl$Fragment$EntrySave$mediaListEntry<TRes>
    implements CopyWith$Fragment$EntrySave$mediaListEntry<TRes> {
  _CopyWithImpl$Fragment$EntrySave$mediaListEntry(
    this._instance,
    this._then,
  );

  final Fragment$EntrySave$mediaListEntry _instance;

  final TRes Function(Fragment$EntrySave$mediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? mediaId = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? notes = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
    Object? updatedAt = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$EntrySave$mediaListEntry(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        progressVolumes: progressVolumes == _undefined
            ? _instance.progressVolumes
            : (progressVolumes as int?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as Fragment$EntrySave$mediaListEntry$startedAt?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt as Fragment$EntrySave$mediaListEntry$completedAt?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$EntrySave$mediaListEntry$startedAt<TRes> get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWith$Fragment$EntrySave$mediaListEntry$startedAt.stub(
            _then(_instance))
        : CopyWith$Fragment$EntrySave$mediaListEntry$startedAt(
            local$startedAt, (e) => call(startedAt: e));
  }

  @override
  CopyWith$Fragment$EntrySave$mediaListEntry$completedAt<TRes> get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWith$Fragment$EntrySave$mediaListEntry$completedAt.stub(
            _then(_instance))
        : CopyWith$Fragment$EntrySave$mediaListEntry$completedAt(
            local$completedAt, (e) => call(completedAt: e));
  }
}

class _CopyWithStubImpl$Fragment$EntrySave$mediaListEntry<TRes>
    implements CopyWith$Fragment$EntrySave$mediaListEntry<TRes> {
  _CopyWithStubImpl$Fragment$EntrySave$mediaListEntry(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    int? progress,
    int? progressVolumes,
    String? notes,
    Fragment$EntrySave$mediaListEntry$startedAt? startedAt,
    Fragment$EntrySave$mediaListEntry$completedAt? completedAt,
    int? updatedAt,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$EntrySave$mediaListEntry$startedAt<TRes> get startedAt =>
      CopyWith$Fragment$EntrySave$mediaListEntry$startedAt.stub(_res);

  @override
  CopyWith$Fragment$EntrySave$mediaListEntry$completedAt<TRes>
      get completedAt =>
          CopyWith$Fragment$EntrySave$mediaListEntry$completedAt.stub(_res);
}

class Fragment$EntrySave$mediaListEntry$startedAt {
  Fragment$EntrySave$mediaListEntry$startedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$EntrySave$mediaListEntry$startedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Fragment$EntrySave$mediaListEntry$startedAt(
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
    final resultData = <String, dynamic>{};
    final l$year = year;
    resultData['year'] = l$year;
    final l$month = month;
    resultData['month'] = l$month;
    final l$day = day;
    resultData['day'] = l$day;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Fragment$EntrySave$mediaListEntry$startedAt ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$EntrySave$mediaListEntry$startedAt
    on Fragment$EntrySave$mediaListEntry$startedAt {
  CopyWith$Fragment$EntrySave$mediaListEntry$startedAt<
          Fragment$EntrySave$mediaListEntry$startedAt>
      get copyWith => CopyWith$Fragment$EntrySave$mediaListEntry$startedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$EntrySave$mediaListEntry$startedAt<TRes> {
  factory CopyWith$Fragment$EntrySave$mediaListEntry$startedAt(
    Fragment$EntrySave$mediaListEntry$startedAt instance,
    TRes Function(Fragment$EntrySave$mediaListEntry$startedAt) then,
  ) = _CopyWithImpl$Fragment$EntrySave$mediaListEntry$startedAt;

  factory CopyWith$Fragment$EntrySave$mediaListEntry$startedAt.stub(TRes res) =
      _CopyWithStubImpl$Fragment$EntrySave$mediaListEntry$startedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$EntrySave$mediaListEntry$startedAt<TRes>
    implements CopyWith$Fragment$EntrySave$mediaListEntry$startedAt<TRes> {
  _CopyWithImpl$Fragment$EntrySave$mediaListEntry$startedAt(
    this._instance,
    this._then,
  );

  final Fragment$EntrySave$mediaListEntry$startedAt _instance;

  final TRes Function(Fragment$EntrySave$mediaListEntry$startedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$EntrySave$mediaListEntry$startedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$EntrySave$mediaListEntry$startedAt<TRes>
    implements CopyWith$Fragment$EntrySave$mediaListEntry$startedAt<TRes> {
  _CopyWithStubImpl$Fragment$EntrySave$mediaListEntry$startedAt(this._res);

  final TRes _res;

  @override
  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$EntrySave$mediaListEntry$completedAt {
  Fragment$EntrySave$mediaListEntry$completedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$EntrySave$mediaListEntry$completedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Fragment$EntrySave$mediaListEntry$completedAt(
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
    final resultData = <String, dynamic>{};
    final l$year = year;
    resultData['year'] = l$year;
    final l$month = month;
    resultData['month'] = l$month;
    final l$day = day;
    resultData['day'] = l$day;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Fragment$EntrySave$mediaListEntry$completedAt ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$EntrySave$mediaListEntry$completedAt
    on Fragment$EntrySave$mediaListEntry$completedAt {
  CopyWith$Fragment$EntrySave$mediaListEntry$completedAt<
          Fragment$EntrySave$mediaListEntry$completedAt>
      get copyWith => CopyWith$Fragment$EntrySave$mediaListEntry$completedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$EntrySave$mediaListEntry$completedAt<TRes> {
  factory CopyWith$Fragment$EntrySave$mediaListEntry$completedAt(
    Fragment$EntrySave$mediaListEntry$completedAt instance,
    TRes Function(Fragment$EntrySave$mediaListEntry$completedAt) then,
  ) = _CopyWithImpl$Fragment$EntrySave$mediaListEntry$completedAt;

  factory CopyWith$Fragment$EntrySave$mediaListEntry$completedAt.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$EntrySave$mediaListEntry$completedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$EntrySave$mediaListEntry$completedAt<TRes>
    implements CopyWith$Fragment$EntrySave$mediaListEntry$completedAt<TRes> {
  _CopyWithImpl$Fragment$EntrySave$mediaListEntry$completedAt(
    this._instance,
    this._then,
  );

  final Fragment$EntrySave$mediaListEntry$completedAt _instance;

  final TRes Function(Fragment$EntrySave$mediaListEntry$completedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$EntrySave$mediaListEntry$completedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$EntrySave$mediaListEntry$completedAt<TRes>
    implements CopyWith$Fragment$EntrySave$mediaListEntry$completedAt<TRes> {
  _CopyWithStubImpl$Fragment$EntrySave$mediaListEntry$completedAt(this._res);

  final TRes _res;

  @override
  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$SaveMediaListEntry {
  factory Variables$Mutation$SaveMediaListEntry({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    int? progress,
    int? progressVolumes,
    String? notes,
    Input$FuzzyDateInput? startedAt,
    Input$FuzzyDateInput? completedAt,
  }) =>
      Variables$Mutation$SaveMediaListEntry._({
        if (id != null) r'id': id,
        if (mediaId != null) r'mediaId': mediaId,
        if (status != null) r'status': status,
        if (progress != null) r'progress': progress,
        if (progressVolumes != null) r'progressVolumes': progressVolumes,
        if (notes != null) r'notes': notes,
        if (startedAt != null) r'startedAt': startedAt,
        if (completedAt != null) r'completedAt': completedAt,
      });

  Variables$Mutation$SaveMediaListEntry._(this._$data);

  factory Variables$Mutation$SaveMediaListEntry.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String));
    }
    if (data.containsKey('progress')) {
      final l$progress = data['progress'];
      result$data['progress'] = (l$progress as int?);
    }
    if (data.containsKey('progressVolumes')) {
      final l$progressVolumes = data['progressVolumes'];
      result$data['progressVolumes'] = (l$progressVolumes as int?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('startedAt')) {
      final l$startedAt = data['startedAt'];
      result$data['startedAt'] = l$startedAt == null
          ? null
          : Input$FuzzyDateInput.fromJson(
              (l$startedAt as Map<String, dynamic>));
    }
    if (data.containsKey('completedAt')) {
      final l$completedAt = data['completedAt'];
      result$data['completedAt'] = l$completedAt == null
          ? null
          : Input$FuzzyDateInput.fromJson(
              (l$completedAt as Map<String, dynamic>));
    }
    return Variables$Mutation$SaveMediaListEntry._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get mediaId => (_$data['mediaId'] as int?);

  Enum$MediaListStatus? get status =>
      (_$data['status'] as Enum$MediaListStatus?);

  int? get progress => (_$data['progress'] as int?);

  int? get progressVolumes => (_$data['progressVolumes'] as int?);

  String? get notes => (_$data['notes'] as String?);

  Input$FuzzyDateInput? get startedAt =>
      (_$data['startedAt'] as Input$FuzzyDateInput?);

  Input$FuzzyDateInput? get completedAt =>
      (_$data['completedAt'] as Input$FuzzyDateInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    }
    if (_$data.containsKey('progress')) {
      final l$progress = progress;
      result$data['progress'] = l$progress;
    }
    if (_$data.containsKey('progressVolumes')) {
      final l$progressVolumes = progressVolumes;
      result$data['progressVolumes'] = l$progressVolumes;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('startedAt')) {
      final l$startedAt = startedAt;
      result$data['startedAt'] = l$startedAt?.toJson();
    }
    if (_$data.containsKey('completedAt')) {
      final l$completedAt = completedAt;
      result$data['completedAt'] = l$completedAt?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveMediaListEntry<
          Variables$Mutation$SaveMediaListEntry>
      get copyWith => CopyWith$Variables$Mutation$SaveMediaListEntry(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveMediaListEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (_$data.containsKey('progress') !=
        other._$data.containsKey('progress')) {
      return false;
    }
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$progressVolumes = progressVolumes;
    final lOther$progressVolumes = other.progressVolumes;
    if (_$data.containsKey('progressVolumes') !=
        other._$data.containsKey('progressVolumes')) {
      return false;
    }
    if (l$progressVolumes != lOther$progressVolumes) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (_$data.containsKey('startedAt') !=
        other._$data.containsKey('startedAt')) {
      return false;
    }
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$completedAt = completedAt;
    final lOther$completedAt = other.completedAt;
    if (_$data.containsKey('completedAt') !=
        other._$data.containsKey('completedAt')) {
      return false;
    }
    if (l$completedAt != lOther$completedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mediaId = mediaId;
    final l$status = status;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$notes = notes;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('progress') ? l$progress : const {},
      _$data.containsKey('progressVolumes') ? l$progressVolumes : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('startedAt') ? l$startedAt : const {},
      _$data.containsKey('completedAt') ? l$completedAt : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveMediaListEntry<TRes> {
  factory CopyWith$Variables$Mutation$SaveMediaListEntry(
    Variables$Mutation$SaveMediaListEntry instance,
    TRes Function(Variables$Mutation$SaveMediaListEntry) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveMediaListEntry;

  factory CopyWith$Variables$Mutation$SaveMediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveMediaListEntry;

  TRes call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    int? progress,
    int? progressVolumes,
    String? notes,
    Input$FuzzyDateInput? startedAt,
    Input$FuzzyDateInput? completedAt,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveMediaListEntry<TRes>
    implements CopyWith$Variables$Mutation$SaveMediaListEntry<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveMediaListEntry(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveMediaListEntry _instance;

  final TRes Function(Variables$Mutation$SaveMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? mediaId = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? notes = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
  }) =>
      _then(Variables$Mutation$SaveMediaListEntry._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (status != _undefined) 'status': (status as Enum$MediaListStatus?),
        if (progress != _undefined) 'progress': (progress as int?),
        if (progressVolumes != _undefined)
          'progressVolumes': (progressVolumes as int?),
        if (notes != _undefined) 'notes': (notes as String?),
        if (startedAt != _undefined)
          'startedAt': (startedAt as Input$FuzzyDateInput?),
        if (completedAt != _undefined)
          'completedAt': (completedAt as Input$FuzzyDateInput?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveMediaListEntry<TRes>
    implements CopyWith$Variables$Mutation$SaveMediaListEntry<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveMediaListEntry(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    int? progress,
    int? progressVolumes,
    String? notes,
    Input$FuzzyDateInput? startedAt,
    Input$FuzzyDateInput? completedAt,
  }) =>
      _res;
}

class Mutation$SaveMediaListEntry {
  Mutation$SaveMediaListEntry({
    this.SaveMediaListEntry,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveMediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$SaveMediaListEntry = json['SaveMediaListEntry'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveMediaListEntry(
      SaveMediaListEntry: l$SaveMediaListEntry == null
          ? null
          : Mutation$SaveMediaListEntry$SaveMediaListEntry.fromJson(
              (l$SaveMediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveMediaListEntry$SaveMediaListEntry? SaveMediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$SaveMediaListEntry = SaveMediaListEntry;
    resultData['SaveMediaListEntry'] = l$SaveMediaListEntry?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$SaveMediaListEntry = SaveMediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveMediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveMediaListEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveMediaListEntry = SaveMediaListEntry;
    final lOther$SaveMediaListEntry = other.SaveMediaListEntry;
    if (l$SaveMediaListEntry != lOther$SaveMediaListEntry) {
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

extension UtilityExtension$Mutation$SaveMediaListEntry
    on Mutation$SaveMediaListEntry {
  CopyWith$Mutation$SaveMediaListEntry<Mutation$SaveMediaListEntry>
      get copyWith => CopyWith$Mutation$SaveMediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveMediaListEntry<TRes> {
  factory CopyWith$Mutation$SaveMediaListEntry(
    Mutation$SaveMediaListEntry instance,
    TRes Function(Mutation$SaveMediaListEntry) then,
  ) = _CopyWithImpl$Mutation$SaveMediaListEntry;

  factory CopyWith$Mutation$SaveMediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveMediaListEntry;

  TRes call({
    Mutation$SaveMediaListEntry$SaveMediaListEntry? SaveMediaListEntry,
    String? $__typename,
  });
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry<TRes>
      get SaveMediaListEntry;
}

class _CopyWithImpl$Mutation$SaveMediaListEntry<TRes>
    implements CopyWith$Mutation$SaveMediaListEntry<TRes> {
  _CopyWithImpl$Mutation$SaveMediaListEntry(
    this._instance,
    this._then,
  );

  final Mutation$SaveMediaListEntry _instance;

  final TRes Function(Mutation$SaveMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? SaveMediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveMediaListEntry(
        SaveMediaListEntry: SaveMediaListEntry == _undefined
            ? _instance.SaveMediaListEntry
            : (SaveMediaListEntry
                as Mutation$SaveMediaListEntry$SaveMediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry<TRes>
      get SaveMediaListEntry {
    final local$SaveMediaListEntry = _instance.SaveMediaListEntry;
    return local$SaveMediaListEntry == null
        ? CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry.stub(
            _then(_instance))
        : CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry(
            local$SaveMediaListEntry, (e) => call(SaveMediaListEntry: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveMediaListEntry<TRes>
    implements CopyWith$Mutation$SaveMediaListEntry<TRes> {
  _CopyWithStubImpl$Mutation$SaveMediaListEntry(this._res);

  final TRes _res;

  @override
  call({
    Mutation$SaveMediaListEntry$SaveMediaListEntry? SaveMediaListEntry,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry<TRes>
      get SaveMediaListEntry =>
          CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry.stub(_res);
}

const documentNodeMutationSaveMediaListEntry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveMediaListEntry'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'progress')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'progressVolumes')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'notes')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'startedAt')),
        type: NamedTypeNode(
          name: NameNode(value: 'FuzzyDateInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'completedAt')),
        type: NamedTypeNode(
          name: NameNode(value: 'FuzzyDateInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'SaveMediaListEntry'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mediaId'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'status'),
            value: VariableNode(name: NameNode(value: 'status')),
          ),
          ArgumentNode(
            name: NameNode(value: 'progress'),
            value: VariableNode(name: NameNode(value: 'progress')),
          ),
          ArgumentNode(
            name: NameNode(value: 'progressVolumes'),
            value: VariableNode(name: NameNode(value: 'progressVolumes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'notes'),
            value: VariableNode(name: NameNode(value: 'notes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'startedAt'),
            value: VariableNode(name: NameNode(value: 'startedAt')),
          ),
          ArgumentNode(
            name: NameNode(value: 'completedAt'),
            value: VariableNode(name: NameNode(value: 'completedAt')),
          ),
        ],
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
            name: NameNode(value: 'mediaId'),
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
            name: NameNode(value: 'notes'),
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
          ),
          FieldNode(
            name: NameNode(value: 'completedAt'),
            alias: null,
            arguments: [],
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
]);
Mutation$SaveMediaListEntry _parserFn$Mutation$SaveMediaListEntry(
        Map<String, dynamic> data) =>
    Mutation$SaveMediaListEntry.fromJson(data);
typedef OnMutationCompleted$Mutation$SaveMediaListEntry = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$SaveMediaListEntry?,
);

class Options$Mutation$SaveMediaListEntry
    extends graphql.MutationOptions<Mutation$SaveMediaListEntry> {
  Options$Mutation$SaveMediaListEntry({
    String? operationName,
    Variables$Mutation$SaveMediaListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveMediaListEntry? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveMediaListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveMediaListEntry>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveMediaListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveMediaListEntry,
          parserFn: _parserFn$Mutation$SaveMediaListEntry,
        );

  final OnMutationCompleted$Mutation$SaveMediaListEntry? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SaveMediaListEntry
    extends graphql.WatchQueryOptions<Mutation$SaveMediaListEntry> {
  WatchOptions$Mutation$SaveMediaListEntry({
    String? operationName,
    Variables$Mutation$SaveMediaListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveMediaListEntry? typedOptimisticResult,
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
          document: documentNodeMutationSaveMediaListEntry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SaveMediaListEntry,
        );
}

extension ClientExtension$Mutation$SaveMediaListEntry on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SaveMediaListEntry>>
      mutate$SaveMediaListEntry(
              [Options$Mutation$SaveMediaListEntry? options]) async =>
          await mutate(options ?? Options$Mutation$SaveMediaListEntry());
  graphql.ObservableQuery<Mutation$SaveMediaListEntry>
      watchMutation$SaveMediaListEntry(
              [WatchOptions$Mutation$SaveMediaListEntry? options]) =>
          watchMutation(
              options ?? WatchOptions$Mutation$SaveMediaListEntry());
}

class Mutation$SaveMediaListEntry$HookResult {
  Mutation$SaveMediaListEntry$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SaveMediaListEntry runMutation;

  final graphql.QueryResult<Mutation$SaveMediaListEntry> result;
}

Mutation$SaveMediaListEntry$HookResult useMutation$SaveMediaListEntry(
    [WidgetOptions$Mutation$SaveMediaListEntry? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SaveMediaListEntry());
  return Mutation$SaveMediaListEntry$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SaveMediaListEntry>
    useWatchMutation$SaveMediaListEntry(
            [WatchOptions$Mutation$SaveMediaListEntry? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$SaveMediaListEntry());

class WidgetOptions$Mutation$SaveMediaListEntry
    extends graphql.MutationOptions<Mutation$SaveMediaListEntry> {
  WidgetOptions$Mutation$SaveMediaListEntry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveMediaListEntry? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveMediaListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveMediaListEntry>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveMediaListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveMediaListEntry,
          parserFn: _parserFn$Mutation$SaveMediaListEntry,
        );

  final OnMutationCompleted$Mutation$SaveMediaListEntry? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SaveMediaListEntry
    = graphql.MultiSourceResult<Mutation$SaveMediaListEntry> Function({
  Variables$Mutation$SaveMediaListEntry? variables,
  Object? optimisticResult,
  Mutation$SaveMediaListEntry? typedOptimisticResult,
});
typedef Builder$Mutation$SaveMediaListEntry = widgets.Widget Function(
  RunMutation$Mutation$SaveMediaListEntry,
  graphql.QueryResult<Mutation$SaveMediaListEntry>?,
);

class Mutation$SaveMediaListEntry$Widget
    extends graphql_flutter.Mutation<Mutation$SaveMediaListEntry> {
  Mutation$SaveMediaListEntry$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SaveMediaListEntry? options,
    required Builder$Mutation$SaveMediaListEntry builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SaveMediaListEntry(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$SaveMediaListEntry$SaveMediaListEntry {
  Mutation$SaveMediaListEntry$SaveMediaListEntry({
    required this.id,
    required this.mediaId,
    this.status,
    this.progress,
    this.progressVolumes,
    this.notes,
    this.startedAt,
    this.completedAt,
    this.updatedAt,
    this.createdAt,
    this.$__typename = 'MediaList',
  });

  factory Mutation$SaveMediaListEntry$SaveMediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mediaId = json['mediaId'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$progressVolumes = json['progressVolumes'];
    final l$notes = json['notes'];
    final l$startedAt = json['startedAt'];
    final l$completedAt = json['completedAt'];
    final l$updatedAt = json['updatedAt'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveMediaListEntry$SaveMediaListEntry(
      id: (l$id as int),
      mediaId: (l$mediaId as int),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      progress: (l$progress as int?),
      progressVolumes: (l$progressVolumes as int?),
      notes: (l$notes as String?),
      startedAt: l$startedAt == null
          ? null
          : Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt.fromJson(
              (l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt.fromJson(
              (l$completedAt as Map<String, dynamic>)),
      updatedAt: (l$updatedAt as int?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int mediaId;

  final Enum$MediaListStatus? status;

  final int? progress;

  final int? progressVolumes;

  final String? notes;

  final Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt? startedAt;

  final Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt? completedAt;

  final int? updatedAt;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$mediaId = mediaId;
    resultData['mediaId'] = l$mediaId;
    final l$status = status;
    resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$progress = progress;
    resultData['progress'] = l$progress;
    final l$progressVolumes = progressVolumes;
    resultData['progressVolumes'] = l$progressVolumes;
    final l$notes = notes;
    resultData['notes'] = l$notes;
    final l$startedAt = startedAt;
    resultData['startedAt'] = l$startedAt?.toJson();
    final l$completedAt = completedAt;
    resultData['completedAt'] = l$completedAt?.toJson();
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mediaId = mediaId;
    final l$status = status;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$notes = notes;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    final l$updatedAt = updatedAt;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$mediaId,
      l$status,
      l$progress,
      l$progressVolumes,
      l$notes,
      l$startedAt,
      l$completedAt,
      l$updatedAt,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveMediaListEntry$SaveMediaListEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SaveMediaListEntry$SaveMediaListEntry
    on Mutation$SaveMediaListEntry$SaveMediaListEntry {
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry<
          Mutation$SaveMediaListEntry$SaveMediaListEntry>
      get copyWith => CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry<TRes> {
  factory CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry(
    Mutation$SaveMediaListEntry$SaveMediaListEntry instance,
    TRes Function(Mutation$SaveMediaListEntry$SaveMediaListEntry) then,
  ) = _CopyWithImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry;

  factory CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry;

  TRes call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    int? progress,
    int? progressVolumes,
    String? notes,
    Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt? startedAt,
    Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt? completedAt,
    int? updatedAt,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt<TRes>
      get startedAt;
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt<TRes>
      get completedAt;
}

class _CopyWithImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry<TRes>
    implements CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry<TRes> {
  _CopyWithImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry(
    this._instance,
    this._then,
  );

  final Mutation$SaveMediaListEntry$SaveMediaListEntry _instance;

  final TRes Function(Mutation$SaveMediaListEntry$SaveMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? mediaId = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? notes = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
    Object? updatedAt = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveMediaListEntry$SaveMediaListEntry(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        progressVolumes: progressVolumes == _undefined
            ? _instance.progressVolumes
            : (progressVolumes as int?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt
                as Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt
                as Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt<TRes>
      get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt
            .stub(_then(_instance))
        : CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt(
            local$startedAt, (e) => call(startedAt: e));
  }

  @override
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt<TRes>
      get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt
            .stub(_then(_instance))
        : CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt(
            local$completedAt, (e) => call(completedAt: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry<TRes>
    implements CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry<TRes> {
  _CopyWithStubImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    int? progress,
    int? progressVolumes,
    String? notes,
    Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt? startedAt,
    Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt? completedAt,
    int? updatedAt,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt<TRes>
      get startedAt =>
          CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt
              .stub(_res);

  @override
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt<TRes>
      get completedAt =>
          CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt
              .stub(_res);
}

class Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt {
  Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt(
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
    final resultData = <String, dynamic>{};
    final l$year = year;
    resultData['year'] = l$year;
    final l$month = month;
    resultData['month'] = l$month;
    final l$day = day;
    resultData['day'] = l$day;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt
    on Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt {
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt<
          Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt>
      get copyWith =>
          CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt<
    TRes> {
  factory CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt(
    Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt instance,
    TRes Function(Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt)
        then,
  ) = _CopyWithImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt;

  factory CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt<
        TRes>
    implements
        CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt<
            TRes> {
  _CopyWithImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt(
    this._instance,
    this._then,
  );

  final Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt _instance;

  final TRes Function(Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt<
        TRes>
    implements
        CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt<
            TRes> {
  _CopyWithStubImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$startedAt(
      this._res);

  final TRes _res;

  @override
  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt {
  Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt(
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
    final resultData = <String, dynamic>{};
    final l$year = year;
    resultData['year'] = l$year;
    final l$month = month;
    resultData['month'] = l$month;
    final l$day = day;
    resultData['day'] = l$day;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other
            is! Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt
    on Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt {
  CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt<
          Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt>
      get copyWith =>
          CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt<
    TRes> {
  factory CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt(
    Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt instance,
    TRes Function(Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt)
        then,
  ) = _CopyWithImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt;

  factory CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt<
        TRes>
    implements
        CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt<
            TRes> {
  _CopyWithImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt(
    this._instance,
    this._then,
  );

  final Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt _instance;

  final TRes Function(
      Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt<
        TRes>
    implements
        CopyWith$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt<
            TRes> {
  _CopyWithStubImpl$Mutation$SaveMediaListEntry$SaveMediaListEntry$completedAt(
      this._res);

  final TRes _res;

  @override
  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}
