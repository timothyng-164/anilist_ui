import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$DeleteMediaListEntry {
  factory Variables$Mutation$DeleteMediaListEntry({int? id}) =>
      Variables$Mutation$DeleteMediaListEntry._({
        if (id != null) r'id': id,
      });

  Variables$Mutation$DeleteMediaListEntry._(this._$data);

  factory Variables$Mutation$DeleteMediaListEntry.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$DeleteMediaListEntry._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteMediaListEntry<
          Variables$Mutation$DeleteMediaListEntry>
      get copyWith => CopyWith$Variables$Mutation$DeleteMediaListEntry(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteMediaListEntry) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteMediaListEntry<TRes> {
  factory CopyWith$Variables$Mutation$DeleteMediaListEntry(
    Variables$Mutation$DeleteMediaListEntry instance,
    TRes Function(Variables$Mutation$DeleteMediaListEntry) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteMediaListEntry;

  factory CopyWith$Variables$Mutation$DeleteMediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteMediaListEntry;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteMediaListEntry<TRes>
    implements CopyWith$Variables$Mutation$DeleteMediaListEntry<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteMediaListEntry(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteMediaListEntry _instance;

  final TRes Function(Variables$Mutation$DeleteMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteMediaListEntry._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteMediaListEntry<TRes>
    implements CopyWith$Variables$Mutation$DeleteMediaListEntry<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteMediaListEntry(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$DeleteMediaListEntry {
  Mutation$DeleteMediaListEntry({
    this.DeleteMediaListEntry,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteMediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$DeleteMediaListEntry = json['DeleteMediaListEntry'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteMediaListEntry(
      DeleteMediaListEntry: l$DeleteMediaListEntry == null
          ? null
          : Mutation$DeleteMediaListEntry$DeleteMediaListEntry.fromJson(
              (l$DeleteMediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteMediaListEntry$DeleteMediaListEntry?
      DeleteMediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$DeleteMediaListEntry = DeleteMediaListEntry;
    _resultData['DeleteMediaListEntry'] = l$DeleteMediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$DeleteMediaListEntry = DeleteMediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$DeleteMediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteMediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$DeleteMediaListEntry = DeleteMediaListEntry;
    final lOther$DeleteMediaListEntry = other.DeleteMediaListEntry;
    if (l$DeleteMediaListEntry != lOther$DeleteMediaListEntry) {
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

extension UtilityExtension$Mutation$DeleteMediaListEntry
    on Mutation$DeleteMediaListEntry {
  CopyWith$Mutation$DeleteMediaListEntry<Mutation$DeleteMediaListEntry>
      get copyWith => CopyWith$Mutation$DeleteMediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteMediaListEntry<TRes> {
  factory CopyWith$Mutation$DeleteMediaListEntry(
    Mutation$DeleteMediaListEntry instance,
    TRes Function(Mutation$DeleteMediaListEntry) then,
  ) = _CopyWithImpl$Mutation$DeleteMediaListEntry;

  factory CopyWith$Mutation$DeleteMediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteMediaListEntry;

  TRes call({
    Mutation$DeleteMediaListEntry$DeleteMediaListEntry? DeleteMediaListEntry,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes>
      get DeleteMediaListEntry;
}

class _CopyWithImpl$Mutation$DeleteMediaListEntry<TRes>
    implements CopyWith$Mutation$DeleteMediaListEntry<TRes> {
  _CopyWithImpl$Mutation$DeleteMediaListEntry(
    this._instance,
    this._then,
  );

  final Mutation$DeleteMediaListEntry _instance;

  final TRes Function(Mutation$DeleteMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? DeleteMediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteMediaListEntry(
        DeleteMediaListEntry: DeleteMediaListEntry == _undefined
            ? _instance.DeleteMediaListEntry
            : (DeleteMediaListEntry
                as Mutation$DeleteMediaListEntry$DeleteMediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes>
      get DeleteMediaListEntry {
    final local$DeleteMediaListEntry = _instance.DeleteMediaListEntry;
    return local$DeleteMediaListEntry == null
        ? CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
            local$DeleteMediaListEntry, (e) => call(DeleteMediaListEntry: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteMediaListEntry<TRes>
    implements CopyWith$Mutation$DeleteMediaListEntry<TRes> {
  _CopyWithStubImpl$Mutation$DeleteMediaListEntry(this._res);

  TRes _res;

  call({
    Mutation$DeleteMediaListEntry$DeleteMediaListEntry? DeleteMediaListEntry,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes>
      get DeleteMediaListEntry =>
          CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry.stub(
              _res);
}

const documentNodeMutationDeleteMediaListEntry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteMediaListEntry'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'DeleteMediaListEntry'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'deleted'),
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
Mutation$DeleteMediaListEntry _parserFn$Mutation$DeleteMediaListEntry(
        Map<String, dynamic> data) =>
    Mutation$DeleteMediaListEntry.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteMediaListEntry = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteMediaListEntry?,
);

class Options$Mutation$DeleteMediaListEntry
    extends graphql.MutationOptions<Mutation$DeleteMediaListEntry> {
  Options$Mutation$DeleteMediaListEntry({
    String? operationName,
    Variables$Mutation$DeleteMediaListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteMediaListEntry? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteMediaListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteMediaListEntry>? update,
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
                        : _parserFn$Mutation$DeleteMediaListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteMediaListEntry,
          parserFn: _parserFn$Mutation$DeleteMediaListEntry,
        );

  final OnMutationCompleted$Mutation$DeleteMediaListEntry?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteMediaListEntry
    extends graphql.WatchQueryOptions<Mutation$DeleteMediaListEntry> {
  WatchOptions$Mutation$DeleteMediaListEntry({
    String? operationName,
    Variables$Mutation$DeleteMediaListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteMediaListEntry? typedOptimisticResult,
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
          document: documentNodeMutationDeleteMediaListEntry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteMediaListEntry,
        );
}

extension ClientExtension$Mutation$DeleteMediaListEntry
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteMediaListEntry>>
      mutate$DeleteMediaListEntry(
              [Options$Mutation$DeleteMediaListEntry? options]) async =>
          await this.mutate(options ?? Options$Mutation$DeleteMediaListEntry());
  graphql.ObservableQuery<Mutation$DeleteMediaListEntry>
      watchMutation$DeleteMediaListEntry(
              [WatchOptions$Mutation$DeleteMediaListEntry? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$DeleteMediaListEntry());
}

class Mutation$DeleteMediaListEntry$HookResult {
  Mutation$DeleteMediaListEntry$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteMediaListEntry runMutation;

  final graphql.QueryResult<Mutation$DeleteMediaListEntry> result;
}

Mutation$DeleteMediaListEntry$HookResult useMutation$DeleteMediaListEntry(
    [WidgetOptions$Mutation$DeleteMediaListEntry? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteMediaListEntry());
  return Mutation$DeleteMediaListEntry$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteMediaListEntry>
    useWatchMutation$DeleteMediaListEntry(
            [WatchOptions$Mutation$DeleteMediaListEntry? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$DeleteMediaListEntry());

class WidgetOptions$Mutation$DeleteMediaListEntry
    extends graphql.MutationOptions<Mutation$DeleteMediaListEntry> {
  WidgetOptions$Mutation$DeleteMediaListEntry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteMediaListEntry? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteMediaListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteMediaListEntry>? update,
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
                        : _parserFn$Mutation$DeleteMediaListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteMediaListEntry,
          parserFn: _parserFn$Mutation$DeleteMediaListEntry,
        );

  final OnMutationCompleted$Mutation$DeleteMediaListEntry?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteMediaListEntry
    = graphql.MultiSourceResult<Mutation$DeleteMediaListEntry> Function({
  Variables$Mutation$DeleteMediaListEntry? variables,
  Object? optimisticResult,
  Mutation$DeleteMediaListEntry? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteMediaListEntry = widgets.Widget Function(
  RunMutation$Mutation$DeleteMediaListEntry,
  graphql.QueryResult<Mutation$DeleteMediaListEntry>?,
);

class Mutation$DeleteMediaListEntry$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteMediaListEntry> {
  Mutation$DeleteMediaListEntry$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteMediaListEntry? options,
    required Builder$Mutation$DeleteMediaListEntry builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteMediaListEntry(),
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

class Mutation$DeleteMediaListEntry$DeleteMediaListEntry {
  Mutation$DeleteMediaListEntry$DeleteMediaListEntry({
    this.deleted,
    this.$__typename = 'Deleted',
  });

  factory Mutation$DeleteMediaListEntry$DeleteMediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$deleted = json['deleted'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
      deleted: (l$deleted as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? deleted;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleted = deleted;
    _resultData['deleted'] = l$deleted;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleted = deleted;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleted,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteMediaListEntry$DeleteMediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleted = deleted;
    final lOther$deleted = other.deleted;
    if (l$deleted != lOther$deleted) {
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

extension UtilityExtension$Mutation$DeleteMediaListEntry$DeleteMediaListEntry
    on Mutation$DeleteMediaListEntry$DeleteMediaListEntry {
  CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<
          Mutation$DeleteMediaListEntry$DeleteMediaListEntry>
      get copyWith =>
          CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<
    TRes> {
  factory CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
    Mutation$DeleteMediaListEntry$DeleteMediaListEntry instance,
    TRes Function(Mutation$DeleteMediaListEntry$DeleteMediaListEntry) then,
  ) = _CopyWithImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry;

  factory CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry;

  TRes call({
    bool? deleted,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes>
    implements
        CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes> {
  _CopyWithImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
    this._instance,
    this._then,
  );

  final Mutation$DeleteMediaListEntry$DeleteMediaListEntry _instance;

  final TRes Function(Mutation$DeleteMediaListEntry$DeleteMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleted = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
        deleted: deleted == _undefined ? _instance.deleted : (deleted as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes>
    implements
        CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes> {
  _CopyWithStubImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
      this._res);

  TRes _res;

  call({
    bool? deleted,
    String? $__typename,
  }) =>
      _res;
}
