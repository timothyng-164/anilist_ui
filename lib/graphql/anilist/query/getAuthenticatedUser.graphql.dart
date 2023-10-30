import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetAuthenticatedUser {
  Query$GetAuthenticatedUser({
    this.Viewer,
    this.$__typename = 'Query',
  });

  factory Query$GetAuthenticatedUser.fromJson(Map<String, dynamic> json) {
    final l$Viewer = json['Viewer'];
    final l$$__typename = json['__typename'];
    return Query$GetAuthenticatedUser(
      Viewer: l$Viewer == null
          ? null
          : Query$GetAuthenticatedUser$Viewer.fromJson(
              (l$Viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAuthenticatedUser$Viewer? Viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$Viewer = Viewer;
    resultData['Viewer'] = l$Viewer?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Query$GetAuthenticatedUser ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAuthenticatedUser
    on Query$GetAuthenticatedUser {
  CopyWith$Query$GetAuthenticatedUser<Query$GetAuthenticatedUser>
      get copyWith => CopyWith$Query$GetAuthenticatedUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAuthenticatedUser<TRes> {
  factory CopyWith$Query$GetAuthenticatedUser(
    Query$GetAuthenticatedUser instance,
    TRes Function(Query$GetAuthenticatedUser) then,
  ) = _CopyWithImpl$Query$GetAuthenticatedUser;

  factory CopyWith$Query$GetAuthenticatedUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAuthenticatedUser;

  TRes call({
    Query$GetAuthenticatedUser$Viewer? Viewer,
    String? $__typename,
  });
  CopyWith$Query$GetAuthenticatedUser$Viewer<TRes> get Viewer;
}

class _CopyWithImpl$Query$GetAuthenticatedUser<TRes>
    implements CopyWith$Query$GetAuthenticatedUser<TRes> {
  _CopyWithImpl$Query$GetAuthenticatedUser(
    this._instance,
    this._then,
  );

  final Query$GetAuthenticatedUser _instance;

  final TRes Function(Query$GetAuthenticatedUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? Viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAuthenticatedUser(
        Viewer: Viewer == _undefined
            ? _instance.Viewer
            : (Viewer as Query$GetAuthenticatedUser$Viewer?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$GetAuthenticatedUser$Viewer<TRes> get Viewer {
    final local$Viewer = _instance.Viewer;
    return local$Viewer == null
        ? CopyWith$Query$GetAuthenticatedUser$Viewer.stub(_then(_instance))
        : CopyWith$Query$GetAuthenticatedUser$Viewer(
            local$Viewer, (e) => call(Viewer: e));
  }
}

class _CopyWithStubImpl$Query$GetAuthenticatedUser<TRes>
    implements CopyWith$Query$GetAuthenticatedUser<TRes> {
  _CopyWithStubImpl$Query$GetAuthenticatedUser(this._res);

  final TRes _res;

  @override
  call({
    Query$GetAuthenticatedUser$Viewer? Viewer,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$GetAuthenticatedUser$Viewer<TRes> get Viewer =>
      CopyWith$Query$GetAuthenticatedUser$Viewer.stub(_res);
}

const documentNodeQueryGetAuthenticatedUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAuthenticatedUser'),
    variableDefinitions: [],
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
Query$GetAuthenticatedUser _parserFn$Query$GetAuthenticatedUser(
        Map<String, dynamic> data) =>
    Query$GetAuthenticatedUser.fromJson(data);
typedef OnQueryComplete$Query$GetAuthenticatedUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAuthenticatedUser?,
);

class Options$Query$GetAuthenticatedUser
    extends graphql.QueryOptions<Query$GetAuthenticatedUser> {
  Options$Query$GetAuthenticatedUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAuthenticatedUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAuthenticatedUser? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                        : _parserFn$Query$GetAuthenticatedUser(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAuthenticatedUser,
          parserFn: _parserFn$Query$GetAuthenticatedUser,
        );

  final OnQueryComplete$Query$GetAuthenticatedUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAuthenticatedUser
    extends graphql.WatchQueryOptions<Query$GetAuthenticatedUser> {
  WatchOptions$Query$GetAuthenticatedUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAuthenticatedUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetAuthenticatedUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAuthenticatedUser,
        );
}

class FetchMoreOptions$Query$GetAuthenticatedUser
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAuthenticatedUser(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetAuthenticatedUser,
        );
}

extension ClientExtension$Query$GetAuthenticatedUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAuthenticatedUser>>
      query$GetAuthenticatedUser(
              [Options$Query$GetAuthenticatedUser? options]) async =>
          await query(options ?? Options$Query$GetAuthenticatedUser());
  graphql.ObservableQuery<Query$GetAuthenticatedUser>
      watchQuery$GetAuthenticatedUser(
              [WatchOptions$Query$GetAuthenticatedUser? options]) =>
          watchQuery(options ?? WatchOptions$Query$GetAuthenticatedUser());
  void writeQuery$GetAuthenticatedUser({
    required Query$GetAuthenticatedUser data,
    bool broadcast = true,
  }) =>
      writeQuery(
        const graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetAuthenticatedUser)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAuthenticatedUser? readQuery$GetAuthenticatedUser(
      {bool optimistic = true}) {
    final result = readQuery(
      const graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAuthenticatedUser)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAuthenticatedUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAuthenticatedUser>
    useQuery$GetAuthenticatedUser(
            [Options$Query$GetAuthenticatedUser? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAuthenticatedUser());
graphql.ObservableQuery<Query$GetAuthenticatedUser>
    useWatchQuery$GetAuthenticatedUser(
            [WatchOptions$Query$GetAuthenticatedUser? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAuthenticatedUser());

class Query$GetAuthenticatedUser$Widget
    extends graphql_flutter.Query<Query$GetAuthenticatedUser> {
  Query$GetAuthenticatedUser$Widget({
    widgets.Key? key,
    Options$Query$GetAuthenticatedUser? options,
    required graphql_flutter.QueryBuilder<Query$GetAuthenticatedUser> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAuthenticatedUser(),
          builder: builder,
        );
}

class Query$GetAuthenticatedUser$Viewer {
  Query$GetAuthenticatedUser$Viewer({
    required this.id,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$GetAuthenticatedUser$Viewer.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAuthenticatedUser$Viewer(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAuthenticatedUser$Viewer ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAuthenticatedUser$Viewer
    on Query$GetAuthenticatedUser$Viewer {
  CopyWith$Query$GetAuthenticatedUser$Viewer<Query$GetAuthenticatedUser$Viewer>
      get copyWith => CopyWith$Query$GetAuthenticatedUser$Viewer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAuthenticatedUser$Viewer<TRes> {
  factory CopyWith$Query$GetAuthenticatedUser$Viewer(
    Query$GetAuthenticatedUser$Viewer instance,
    TRes Function(Query$GetAuthenticatedUser$Viewer) then,
  ) = _CopyWithImpl$Query$GetAuthenticatedUser$Viewer;

  factory CopyWith$Query$GetAuthenticatedUser$Viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAuthenticatedUser$Viewer;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAuthenticatedUser$Viewer<TRes>
    implements CopyWith$Query$GetAuthenticatedUser$Viewer<TRes> {
  _CopyWithImpl$Query$GetAuthenticatedUser$Viewer(
    this._instance,
    this._then,
  );

  final Query$GetAuthenticatedUser$Viewer _instance;

  final TRes Function(Query$GetAuthenticatedUser$Viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAuthenticatedUser$Viewer(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAuthenticatedUser$Viewer<TRes>
    implements CopyWith$Query$GetAuthenticatedUser$Viewer<TRes> {
  _CopyWithStubImpl$Query$GetAuthenticatedUser$Viewer(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
