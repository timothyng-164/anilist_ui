import '../schema.graphql.dart';
import 'dart:async';
import 'mediaById.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$MediaListEntry {
  Fragment$MediaListEntry({
    this.status,
    this.score,
    this.notes,
    this.progress,
    this.progressVolumes,
    this.startedAt,
    this.completedAt,
    this.$__typename = 'MediaList',
  });

  factory Fragment$MediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$score = json['score'];
    final l$notes = json['notes'];
    final l$progress = json['progress'];
    final l$progressVolumes = json['progressVolumes'];
    final l$startedAt = json['startedAt'];
    final l$completedAt = json['completedAt'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry(
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      score: (l$score as num?)?.toDouble(),
      notes: (l$notes as String?),
      progress: (l$progress as int?),
      progressVolumes: (l$progressVolumes as int?),
      startedAt: l$startedAt == null
          ? null
          : Fragment$Date.fromJson((l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : Fragment$Date.fromJson((l$completedAt as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaListStatus? status;

  final double? score;

  final String? notes;

  final int? progress;

  final int? progressVolumes;

  final Fragment$Date? startedAt;

  final Fragment$Date? completedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$score = score;
    _resultData['score'] = l$score;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$progressVolumes = progressVolumes;
    _resultData['progressVolumes'] = l$progressVolumes;
    final l$startedAt = startedAt;
    _resultData['startedAt'] = l$startedAt?.toJson();
    final l$completedAt = completedAt;
    _resultData['completedAt'] = l$completedAt?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$score = score;
    final l$notes = notes;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$score,
      l$notes,
      l$progress,
      l$progressVolumes,
      l$startedAt,
      l$completedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$MediaListEntry on Fragment$MediaListEntry {
  CopyWith$Fragment$MediaListEntry<Fragment$MediaListEntry> get copyWith =>
      CopyWith$Fragment$MediaListEntry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaListEntry<TRes> {
  factory CopyWith$Fragment$MediaListEntry(
    Fragment$MediaListEntry instance,
    TRes Function(Fragment$MediaListEntry) then,
  ) = _CopyWithImpl$Fragment$MediaListEntry;

  factory CopyWith$Fragment$MediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListEntry;

  TRes call({
    Enum$MediaListStatus? status,
    double? score,
    String? notes,
    int? progress,
    int? progressVolumes,
    Fragment$Date? startedAt,
    Fragment$Date? completedAt,
    String? $__typename,
  });
  CopyWith$Fragment$Date<TRes> get startedAt;
  CopyWith$Fragment$Date<TRes> get completedAt;
}

class _CopyWithImpl$Fragment$MediaListEntry<TRes>
    implements CopyWith$Fragment$MediaListEntry<TRes> {
  _CopyWithImpl$Fragment$MediaListEntry(
    this._instance,
    this._then,
  );

  final Fragment$MediaListEntry _instance;

  final TRes Function(Fragment$MediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? score = _undefined,
    Object? notes = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry(
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        score: score == _undefined ? _instance.score : (score as double?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        progressVolumes: progressVolumes == _undefined
            ? _instance.progressVolumes
            : (progressVolumes as int?),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as Fragment$Date?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt as Fragment$Date?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Date<TRes> get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWith$Fragment$Date.stub(_then(_instance))
        : CopyWith$Fragment$Date(local$startedAt, (e) => call(startedAt: e));
  }

  CopyWith$Fragment$Date<TRes> get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWith$Fragment$Date.stub(_then(_instance))
        : CopyWith$Fragment$Date(
            local$completedAt, (e) => call(completedAt: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaListEntry<TRes>
    implements CopyWith$Fragment$MediaListEntry<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry(this._res);

  TRes _res;

  call({
    Enum$MediaListStatus? status,
    double? score,
    String? notes,
    int? progress,
    int? progressVolumes,
    Fragment$Date? startedAt,
    Fragment$Date? completedAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Date<TRes> get startedAt =>
      CopyWith$Fragment$Date.stub(_res);

  CopyWith$Fragment$Date<TRes> get completedAt =>
      CopyWith$Fragment$Date.stub(_res);
}

const fragmentDefinitionMediaListEntry = FragmentDefinitionNode(
  name: NameNode(value: 'MediaListEntry'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MediaList'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'score'),
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
      name: NameNode(value: 'startedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Date'),
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
          name: NameNode(value: 'Date'),
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
);
const documentNodeFragmentMediaListEntry = DocumentNode(definitions: [
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionDate,
]);

extension ClientExtension$Fragment$MediaListEntry on graphql.GraphQLClient {
  void writeFragment$MediaListEntry({
    required Fragment$MediaListEntry data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaListEntry',
            document: documentNodeFragmentMediaListEntry,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaListEntry? readFragment$MediaListEntry({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaListEntry',
          document: documentNodeFragmentMediaListEntry,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaListEntry.fromJson(result);
  }
}

class Fragment$Date {
  Fragment$Date({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$Date.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Fragment$Date(
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
    if (!(other is Fragment$Date) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Date on Fragment$Date {
  CopyWith$Fragment$Date<Fragment$Date> get copyWith => CopyWith$Fragment$Date(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Date<TRes> {
  factory CopyWith$Fragment$Date(
    Fragment$Date instance,
    TRes Function(Fragment$Date) then,
  ) = _CopyWithImpl$Fragment$Date;

  factory CopyWith$Fragment$Date.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Date;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Date<TRes>
    implements CopyWith$Fragment$Date<TRes> {
  _CopyWithImpl$Fragment$Date(
    this._instance,
    this._then,
  );

  final Fragment$Date _instance;

  final TRes Function(Fragment$Date) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Date(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Date<TRes>
    implements CopyWith$Fragment$Date<TRes> {
  _CopyWithStubImpl$Fragment$Date(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionDate = FragmentDefinitionNode(
  name: NameNode(value: 'Date'),
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
const documentNodeFragmentDate = DocumentNode(definitions: [
  fragmentDefinitionDate,
]);

extension ClientExtension$Fragment$Date on graphql.GraphQLClient {
  void writeFragment$Date({
    required Fragment$Date data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Date',
            document: documentNodeFragmentDate,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Date? readFragment$Date({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Date',
          document: documentNodeFragmentDate,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Date.fromJson(result);
  }
}

class Variables$Query$GetMediaListEntry {
  factory Variables$Query$GetMediaListEntry({
    int? id,
    Enum$MediaType? type,
  }) =>
      Variables$Query$GetMediaListEntry._({
        if (id != null) r'id': id,
        if (type != null) r'type': type,
      });

  Variables$Query$GetMediaListEntry._(this._$data);

  factory Variables$Query$GetMediaListEntry.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    return Variables$Query$GetMediaListEntry._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetMediaListEntry<Variables$Query$GetMediaListEntry>
      get copyWith => CopyWith$Variables$Query$GetMediaListEntry(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetMediaListEntry) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetMediaListEntry<TRes> {
  factory CopyWith$Variables$Query$GetMediaListEntry(
    Variables$Query$GetMediaListEntry instance,
    TRes Function(Variables$Query$GetMediaListEntry) then,
  ) = _CopyWithImpl$Variables$Query$GetMediaListEntry;

  factory CopyWith$Variables$Query$GetMediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMediaListEntry;

  TRes call({
    int? id,
    Enum$MediaType? type,
  });
}

class _CopyWithImpl$Variables$Query$GetMediaListEntry<TRes>
    implements CopyWith$Variables$Query$GetMediaListEntry<TRes> {
  _CopyWithImpl$Variables$Query$GetMediaListEntry(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMediaListEntry _instance;

  final TRes Function(Variables$Query$GetMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Variables$Query$GetMediaListEntry._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetMediaListEntry<TRes>
    implements CopyWith$Variables$Query$GetMediaListEntry<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMediaListEntry(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
  }) =>
      _res;
}

class Query$GetMediaListEntry {
  Query$GetMediaListEntry({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$GetMediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaListEntry(
      Media: l$Media == null
          ? null
          : Query$GetMediaListEntry$Media.fromJson(
              (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMediaListEntry$Media? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtension$Query$GetMediaListEntry on Query$GetMediaListEntry {
  CopyWith$Query$GetMediaListEntry<Query$GetMediaListEntry> get copyWith =>
      CopyWith$Query$GetMediaListEntry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMediaListEntry<TRes> {
  factory CopyWith$Query$GetMediaListEntry(
    Query$GetMediaListEntry instance,
    TRes Function(Query$GetMediaListEntry) then,
  ) = _CopyWithImpl$Query$GetMediaListEntry;

  factory CopyWith$Query$GetMediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaListEntry;

  TRes call({
    Query$GetMediaListEntry$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$GetMediaListEntry$Media<TRes> get Media;
}

class _CopyWithImpl$Query$GetMediaListEntry<TRes>
    implements CopyWith$Query$GetMediaListEntry<TRes> {
  _CopyWithImpl$Query$GetMediaListEntry(
    this._instance,
    this._then,
  );

  final Query$GetMediaListEntry _instance;

  final TRes Function(Query$GetMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaListEntry(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$GetMediaListEntry$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMediaListEntry$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$GetMediaListEntry$Media.stub(_then(_instance))
        : CopyWith$Query$GetMediaListEntry$Media(
            local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaListEntry<TRes>
    implements CopyWith$Query$GetMediaListEntry<TRes> {
  _CopyWithStubImpl$Query$GetMediaListEntry(this._res);

  TRes _res;

  call({
    Query$GetMediaListEntry$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMediaListEntry$Media<TRes> get Media =>
      CopyWith$Query$GetMediaListEntry$Media.stub(_res);
}

const documentNodeQueryGetMediaListEntry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMediaListEntry'),
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
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'type')),
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
            name: NameNode(value: 'mediaListEntry'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaListEntry'),
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
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionDate,
]);
Query$GetMediaListEntry _parserFn$Query$GetMediaListEntry(
        Map<String, dynamic> data) =>
    Query$GetMediaListEntry.fromJson(data);
typedef OnQueryComplete$Query$GetMediaListEntry = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMediaListEntry?,
);

class Options$Query$GetMediaListEntry
    extends graphql.QueryOptions<Query$GetMediaListEntry> {
  Options$Query$GetMediaListEntry({
    String? operationName,
    Variables$Query$GetMediaListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMediaListEntry? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMediaListEntry? onComplete,
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
                        : _parserFn$Query$GetMediaListEntry(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMediaListEntry,
          parserFn: _parserFn$Query$GetMediaListEntry,
        );

  final OnQueryComplete$Query$GetMediaListEntry? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMediaListEntry
    extends graphql.WatchQueryOptions<Query$GetMediaListEntry> {
  WatchOptions$Query$GetMediaListEntry({
    String? operationName,
    Variables$Query$GetMediaListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMediaListEntry? typedOptimisticResult,
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
          document: documentNodeQueryGetMediaListEntry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMediaListEntry,
        );
}

class FetchMoreOptions$Query$GetMediaListEntry
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMediaListEntry({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetMediaListEntry? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetMediaListEntry,
        );
}

extension ClientExtension$Query$GetMediaListEntry on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMediaListEntry>> query$GetMediaListEntry(
          [Options$Query$GetMediaListEntry? options]) async =>
      await this.query(options ?? Options$Query$GetMediaListEntry());
  graphql.ObservableQuery<Query$GetMediaListEntry> watchQuery$GetMediaListEntry(
          [WatchOptions$Query$GetMediaListEntry? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetMediaListEntry());
  void writeQuery$GetMediaListEntry({
    required Query$GetMediaListEntry data,
    Variables$Query$GetMediaListEntry? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetMediaListEntry),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMediaListEntry? readQuery$GetMediaListEntry({
    Variables$Query$GetMediaListEntry? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetMediaListEntry),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMediaListEntry.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMediaListEntry>
    useQuery$GetMediaListEntry([Options$Query$GetMediaListEntry? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetMediaListEntry());
graphql.ObservableQuery<Query$GetMediaListEntry>
    useWatchQuery$GetMediaListEntry(
            [WatchOptions$Query$GetMediaListEntry? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetMediaListEntry());

class Query$GetMediaListEntry$Widget
    extends graphql_flutter.Query<Query$GetMediaListEntry> {
  Query$GetMediaListEntry$Widget({
    widgets.Key? key,
    Options$Query$GetMediaListEntry? options,
    required graphql_flutter.QueryBuilder<Query$GetMediaListEntry> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMediaListEntry(),
          builder: builder,
        );
}

class Query$GetMediaListEntry$Media {
  Query$GetMediaListEntry$Media({
    required this.id,
    this.type,
    this.title,
    this.episodes,
    this.chapters,
    this.volumes,
    this.mediaListEntry,
    this.$__typename = 'Media',
  });

  factory Query$GetMediaListEntry$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$volumes = json['volumes'];
    final l$mediaListEntry = json['mediaListEntry'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaListEntry$Media(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      title: l$title == null
          ? null
          : Query$GetMediaListEntry$Media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      volumes: (l$volumes as int?),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : Fragment$MediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$MediaType? type;

  final Query$GetMediaListEntry$Media$title? title;

  final int? episodes;

  final int? chapters;

  final int? volumes;

  final Fragment$MediaListEntry? mediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$volumes = volumes;
    _resultData['volumes'] = l$volumes;
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$title = title;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$volumes = volumes;
    final l$mediaListEntry = mediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$title,
      l$episodes,
      l$chapters,
      l$volumes,
      l$mediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaListEntry$Media) ||
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

extension UtilityExtension$Query$GetMediaListEntry$Media
    on Query$GetMediaListEntry$Media {
  CopyWith$Query$GetMediaListEntry$Media<Query$GetMediaListEntry$Media>
      get copyWith => CopyWith$Query$GetMediaListEntry$Media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaListEntry$Media<TRes> {
  factory CopyWith$Query$GetMediaListEntry$Media(
    Query$GetMediaListEntry$Media instance,
    TRes Function(Query$GetMediaListEntry$Media) then,
  ) = _CopyWithImpl$Query$GetMediaListEntry$Media;

  factory CopyWith$Query$GetMediaListEntry$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaListEntry$Media;

  TRes call({
    int? id,
    Enum$MediaType? type,
    Query$GetMediaListEntry$Media$title? title,
    int? episodes,
    int? chapters,
    int? volumes,
    Fragment$MediaListEntry? mediaListEntry,
    String? $__typename,
  });
  CopyWith$Query$GetMediaListEntry$Media$title<TRes> get title;
  CopyWith$Fragment$MediaListEntry<TRes> get mediaListEntry;
}

class _CopyWithImpl$Query$GetMediaListEntry$Media<TRes>
    implements CopyWith$Query$GetMediaListEntry$Media<TRes> {
  _CopyWithImpl$Query$GetMediaListEntry$Media(
    this._instance,
    this._then,
  );

  final Query$GetMediaListEntry$Media _instance;

  final TRes Function(Query$GetMediaListEntry$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? volumes = _undefined,
    Object? mediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaListEntry$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$GetMediaListEntry$Media$title?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        volumes: volumes == _undefined ? _instance.volumes : (volumes as int?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry as Fragment$MediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMediaListEntry$Media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$GetMediaListEntry$Media$title.stub(_then(_instance))
        : CopyWith$Query$GetMediaListEntry$Media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$MediaListEntry<TRes> get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWith$Fragment$MediaListEntry.stub(_then(_instance))
        : CopyWith$Fragment$MediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaListEntry$Media<TRes>
    implements CopyWith$Query$GetMediaListEntry$Media<TRes> {
  _CopyWithStubImpl$Query$GetMediaListEntry$Media(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    Query$GetMediaListEntry$Media$title? title,
    int? episodes,
    int? chapters,
    int? volumes,
    Fragment$MediaListEntry? mediaListEntry,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMediaListEntry$Media$title<TRes> get title =>
      CopyWith$Query$GetMediaListEntry$Media$title.stub(_res);

  CopyWith$Fragment$MediaListEntry<TRes> get mediaListEntry =>
      CopyWith$Fragment$MediaListEntry.stub(_res);
}

class Query$GetMediaListEntry$Media$title {
  Query$GetMediaListEntry$Media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$GetMediaListEntry$Media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaListEntry$Media$title(
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
    if (!(other is Query$GetMediaListEntry$Media$title) ||
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

extension UtilityExtension$Query$GetMediaListEntry$Media$title
    on Query$GetMediaListEntry$Media$title {
  CopyWith$Query$GetMediaListEntry$Media$title<
          Query$GetMediaListEntry$Media$title>
      get copyWith => CopyWith$Query$GetMediaListEntry$Media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaListEntry$Media$title<TRes> {
  factory CopyWith$Query$GetMediaListEntry$Media$title(
    Query$GetMediaListEntry$Media$title instance,
    TRes Function(Query$GetMediaListEntry$Media$title) then,
  ) = _CopyWithImpl$Query$GetMediaListEntry$Media$title;

  factory CopyWith$Query$GetMediaListEntry$Media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaListEntry$Media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaListEntry$Media$title<TRes>
    implements CopyWith$Query$GetMediaListEntry$Media$title<TRes> {
  _CopyWithImpl$Query$GetMediaListEntry$Media$title(
    this._instance,
    this._then,
  );

  final Query$GetMediaListEntry$Media$title _instance;

  final TRes Function(Query$GetMediaListEntry$Media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaListEntry$Media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaListEntry$Media$title<TRes>
    implements CopyWith$Query$GetMediaListEntry$Media$title<TRes> {
  _CopyWithStubImpl$Query$GetMediaListEntry$Media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}
