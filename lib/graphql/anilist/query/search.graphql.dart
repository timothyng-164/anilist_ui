import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import '../schema.graphql.dart';

class Variables$Query$Search {
  factory Variables$Query$Search({
    int? page,
    int? perPage,
    String? search,
    Enum$MediaType? type,
    bool? isAdult,
  }) =>
      Variables$Query$Search._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (search != null) r'search': search,
        if (type != null) r'type': type,
        if (isAdult != null) r'isAdult': isAdult,
      });

  Variables$Query$Search._(this._$data);

  factory Variables$Query$Search.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    if (data.containsKey('isAdult')) {
      final l$isAdult = data['isAdult'];
      result$data['isAdult'] = (l$isAdult as bool?);
    }
    return Variables$Query$Search._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  String? get search => (_$data['search'] as String?);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  bool? get isAdult => (_$data['isAdult'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    if (_$data.containsKey('isAdult')) {
      final l$isAdult = isAdult;
      result$data['isAdult'] = l$isAdult;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Search<Variables$Query$Search> get copyWith =>
      CopyWith$Variables$Query$Search(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Search) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
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
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
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
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (_$data.containsKey('isAdult') != other._$data.containsKey('isAdult')) {
      return false;
    }
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    final l$search = search;
    final l$type = type;
    final l$isAdult = isAdult;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('isAdult') ? l$isAdult : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Search<TRes> {
  factory CopyWith$Variables$Query$Search(
    Variables$Query$Search instance,
    TRes Function(Variables$Query$Search) then,
  ) = _CopyWithImpl$Variables$Query$Search;

  factory CopyWith$Variables$Query$Search.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Search;

  TRes call({
    int? page,
    int? perPage,
    String? search,
    Enum$MediaType? type,
    bool? isAdult,
  });
}

class _CopyWithImpl$Variables$Query$Search<TRes>
    implements CopyWith$Variables$Query$Search<TRes> {
  _CopyWithImpl$Variables$Query$Search(
    this._instance,
    this._then,
  );

  final Variables$Query$Search _instance;

  final TRes Function(Variables$Query$Search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? search = _undefined,
    Object? type = _undefined,
    Object? isAdult = _undefined,
  }) =>
      _then(Variables$Query$Search._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (search != _undefined) 'search': (search as String?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (isAdult != _undefined) 'isAdult': (isAdult as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Search<TRes>
    implements CopyWith$Variables$Query$Search<TRes> {
  _CopyWithStubImpl$Variables$Query$Search(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    String? search,
    Enum$MediaType? type,
    bool? isAdult,
  }) =>
      _res;
}

class Query$Search {
  Query$Search({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Search.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Search(
      Page: l$Page == null
          ? null
          : Query$Search$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Search$Page? Page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Page = Page;
    _resultData['Page'] = l$Page?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Page = Page;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Page,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Search) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Page = Page;
    final lOther$Page = other.Page;
    if (l$Page != lOther$Page) {
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

extension UtilityExtension$Query$Search on Query$Search {
  CopyWith$Query$Search<Query$Search> get copyWith => CopyWith$Query$Search(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Search<TRes> {
  factory CopyWith$Query$Search(
    Query$Search instance,
    TRes Function(Query$Search) then,
  ) = _CopyWithImpl$Query$Search;

  factory CopyWith$Query$Search.stub(TRes res) = _CopyWithStubImpl$Query$Search;

  TRes call({
    Query$Search$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Search$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Search<TRes> implements CopyWith$Query$Search<TRes> {
  _CopyWithImpl$Query$Search(
    this._instance,
    this._then,
  );

  final Query$Search _instance;

  final TRes Function(Query$Search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search(
        Page:
            Page == _undefined ? _instance.Page : (Page as Query$Search$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Search$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Search$Page.stub(_then(_instance))
        : CopyWith$Query$Search$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Search<TRes>
    implements CopyWith$Query$Search<TRes> {
  _CopyWithStubImpl$Query$Search(this._res);

  TRes _res;

  call({
    Query$Search$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Search$Page<TRes> get Page =>
      CopyWith$Query$Search$Page.stub(_res);
}

const documentNodeQuerySearch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Search'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
        variable: VariableNode(name: NameNode(value: 'isAdult')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
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
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'total'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currentPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'perPage'),
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
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: VariableNode(name: NameNode(value: 'isAdult')),
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
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startDate'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'seasonYear'),
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
                name: NameNode(value: 'format'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'meanScore'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'popularity'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
]);
Query$Search _parserFn$Query$Search(Map<String, dynamic> data) =>
    Query$Search.fromJson(data);
typedef OnQueryComplete$Query$Search = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Search?,
);

class Options$Query$Search extends graphql.QueryOptions<Query$Search> {
  Options$Query$Search({
    String? operationName,
    Variables$Query$Search? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Search? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Search? onComplete,
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
                    data == null ? null : _parserFn$Query$Search(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearch,
          parserFn: _parserFn$Query$Search,
        );

  final OnQueryComplete$Query$Search? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Search
    extends graphql.WatchQueryOptions<Query$Search> {
  WatchOptions$Query$Search({
    String? operationName,
    Variables$Query$Search? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Search? typedOptimisticResult,
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
          document: documentNodeQuerySearch,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Search,
        );
}

class FetchMoreOptions$Query$Search extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Search({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Search? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySearch,
        );
}

extension ClientExtension$Query$Search on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Search>> query$Search(
          [Options$Query$Search? options]) async =>
      await this.query(options ?? Options$Query$Search());
  graphql.ObservableQuery<Query$Search> watchQuery$Search(
          [WatchOptions$Query$Search? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Search());
  void writeQuery$Search({
    required Query$Search data,
    Variables$Query$Search? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySearch),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Search? readQuery$Search({
    Variables$Query$Search? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearch),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Search.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Search> useQuery$Search(
        [Options$Query$Search? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Search());
graphql.ObservableQuery<Query$Search> useWatchQuery$Search(
        [WatchOptions$Query$Search? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Search());

class Query$Search$Widget extends graphql_flutter.Query<Query$Search> {
  Query$Search$Widget({
    widgets.Key? key,
    Options$Query$Search? options,
    required graphql_flutter.QueryBuilder<Query$Search> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Search(),
          builder: builder,
        );
}

class Query$Search$Page {
  Query$Search$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Search$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Search$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$Search$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Search$Page$media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Search$Page$pageInfo? pageInfo;

  final List<Query$Search$Page$media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Search$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$Search$Page on Query$Search$Page {
  CopyWith$Query$Search$Page<Query$Search$Page> get copyWith =>
      CopyWith$Query$Search$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Search$Page<TRes> {
  factory CopyWith$Query$Search$Page(
    Query$Search$Page instance,
    TRes Function(Query$Search$Page) then,
  ) = _CopyWithImpl$Query$Search$Page;

  factory CopyWith$Query$Search$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$Page;

  TRes call({
    Query$Search$Page$pageInfo? pageInfo,
    List<Query$Search$Page$media?>? media,
    String? $__typename,
  });
  CopyWith$Query$Search$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Query$Search$Page$media?>? Function(
              Iterable<
                  CopyWith$Query$Search$Page$media<Query$Search$Page$media>?>?)
          _fn);
}

class _CopyWithImpl$Query$Search$Page<TRes>
    implements CopyWith$Query$Search$Page<TRes> {
  _CopyWithImpl$Query$Search$Page(
    this._instance,
    this._then,
  );

  final Query$Search$Page _instance;

  final TRes Function(Query$Search$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$Search$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Query$Search$Page$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Search$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Search$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$Search$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Query$Search$Page$media?>? Function(
                  Iterable<
                      CopyWith$Query$Search$Page$media<
                          Query$Search$Page$media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Query$Search$Page$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Search$Page<TRes>
    implements CopyWith$Query$Search$Page<TRes> {
  _CopyWithStubImpl$Query$Search$Page(this._res);

  TRes _res;

  call({
    Query$Search$Page$pageInfo? pageInfo,
    List<Query$Search$Page$media?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Search$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Search$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$Search$Page$pageInfo {
  Query$Search$Page$pageInfo({
    this.total,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.perPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Search$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$perPage = json['perPage'];
    final l$$__typename = json['__typename'];
    return Query$Search$Page$pageInfo(
      total: (l$total as int?),
      currentPage: (l$currentPage as int?),
      lastPage: (l$lastPage as int?),
      hasNextPage: (l$hasNextPage as bool?),
      perPage: (l$perPage as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final int? currentPage;

  final int? lastPage;

  final bool? hasNextPage;

  final int? perPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$lastPage = lastPage;
    _resultData['lastPage'] = l$lastPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$perPage = perPage;
    _resultData['perPage'] = l$perPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$currentPage = currentPage;
    final l$lastPage = lastPage;
    final l$hasNextPage = hasNextPage;
    final l$perPage = perPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$currentPage,
      l$lastPage,
      l$hasNextPage,
      l$perPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Search$Page$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
      return false;
    }
    final l$lastPage = lastPage;
    final lOther$lastPage = other.lastPage;
    if (l$lastPage != lOther$lastPage) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (l$perPage != lOther$perPage) {
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

extension UtilityExtension$Query$Search$Page$pageInfo
    on Query$Search$Page$pageInfo {
  CopyWith$Query$Search$Page$pageInfo<Query$Search$Page$pageInfo>
      get copyWith => CopyWith$Query$Search$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Search$Page$pageInfo<TRes> {
  factory CopyWith$Query$Search$Page$pageInfo(
    Query$Search$Page$pageInfo instance,
    TRes Function(Query$Search$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$Search$Page$pageInfo;

  factory CopyWith$Query$Search$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$Page$pageInfo;

  TRes call({
    int? total,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    int? perPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Search$Page$pageInfo<TRes>
    implements CopyWith$Query$Search$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$Search$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Search$Page$pageInfo _instance;

  final TRes Function(Query$Search$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? perPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$Page$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        lastPage:
            lastPage == _undefined ? _instance.lastPage : (lastPage as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        perPage: perPage == _undefined ? _instance.perPage : (perPage as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Search$Page$pageInfo<TRes>
    implements CopyWith$Query$Search$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Search$Page$pageInfo(this._res);

  TRes _res;

  call({
    int? total,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    int? perPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$Search$Page$media {
  Query$Search$Page$media({
    required this.id,
    this.title,
    this.type,
    this.startDate,
    this.seasonYear,
    this.status,
    this.format,
    this.meanScore,
    this.popularity,
    this.coverImage,
    this.episodes,
    this.chapters,
    this.volumes,
    this.$__typename = 'Media',
  });

  factory Query$Search$Page$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$startDate = json['startDate'];
    final l$seasonYear = json['seasonYear'];
    final l$status = json['status'];
    final l$format = json['format'];
    final l$meanScore = json['meanScore'];
    final l$popularity = json['popularity'];
    final l$coverImage = json['coverImage'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$volumes = json['volumes'];
    final l$$__typename = json['__typename'];
    return Query$Search$Page$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$Search$Page$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      startDate: l$startDate == null
          ? null
          : Query$Search$Page$media$startDate.fromJson(
              (l$startDate as Map<String, dynamic>)),
      seasonYear: (l$seasonYear as int?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      meanScore: (l$meanScore as int?),
      popularity: (l$popularity as int?),
      coverImage: l$coverImage == null
          ? null
          : Query$Search$Page$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      volumes: (l$volumes as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Search$Page$media$title? title;

  final Enum$MediaType? type;

  final Query$Search$Page$media$startDate? startDate;

  final int? seasonYear;

  final Enum$MediaStatus? status;

  final Enum$MediaFormat? format;

  final int? meanScore;

  final int? popularity;

  final Query$Search$Page$media$coverImage? coverImage;

  final int? episodes;

  final int? chapters;

  final int? volumes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$seasonYear = seasonYear;
    _resultData['seasonYear'] = l$seasonYear;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$popularity = popularity;
    _resultData['popularity'] = l$popularity;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$volumes = volumes;
    _resultData['volumes'] = l$volumes;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$startDate = startDate;
    final l$seasonYear = seasonYear;
    final l$status = status;
    final l$format = format;
    final l$meanScore = meanScore;
    final l$popularity = popularity;
    final l$coverImage = coverImage;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$volumes = volumes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$startDate,
      l$seasonYear,
      l$status,
      l$format,
      l$meanScore,
      l$popularity,
      l$coverImage,
      l$episodes,
      l$chapters,
      l$volumes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Search$Page$media) ||
        runtimeType != other.runtimeType) {
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$popularity = popularity;
    final lOther$popularity = other.popularity;
    if (l$popularity != lOther$popularity) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Search$Page$media on Query$Search$Page$media {
  CopyWith$Query$Search$Page$media<Query$Search$Page$media> get copyWith =>
      CopyWith$Query$Search$Page$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Search$Page$media<TRes> {
  factory CopyWith$Query$Search$Page$media(
    Query$Search$Page$media instance,
    TRes Function(Query$Search$Page$media) then,
  ) = _CopyWithImpl$Query$Search$Page$media;

  factory CopyWith$Query$Search$Page$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$Page$media;

  TRes call({
    int? id,
    Query$Search$Page$media$title? title,
    Enum$MediaType? type,
    Query$Search$Page$media$startDate? startDate,
    int? seasonYear,
    Enum$MediaStatus? status,
    Enum$MediaFormat? format,
    int? meanScore,
    int? popularity,
    Query$Search$Page$media$coverImage? coverImage,
    int? episodes,
    int? chapters,
    int? volumes,
    String? $__typename,
  });
  CopyWith$Query$Search$Page$media$title<TRes> get title;
  CopyWith$Query$Search$Page$media$startDate<TRes> get startDate;
  CopyWith$Query$Search$Page$media$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Query$Search$Page$media<TRes>
    implements CopyWith$Query$Search$Page$media<TRes> {
  _CopyWithImpl$Query$Search$Page$media(
    this._instance,
    this._then,
  );

  final Query$Search$Page$media _instance;

  final TRes Function(Query$Search$Page$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? startDate = _undefined,
    Object? seasonYear = _undefined,
    Object? status = _undefined,
    Object? format = _undefined,
    Object? meanScore = _undefined,
    Object? popularity = _undefined,
    Object? coverImage = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? volumes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$Page$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Query$Search$Page$media$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as Query$Search$Page$media$startDate?),
        seasonYear: seasonYear == _undefined
            ? _instance.seasonYear
            : (seasonYear as int?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        meanScore:
            meanScore == _undefined ? _instance.meanScore : (meanScore as int?),
        popularity: popularity == _undefined
            ? _instance.popularity
            : (popularity as int?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$Search$Page$media$coverImage?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        volumes: volumes == _undefined ? _instance.volumes : (volumes as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Search$Page$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$Search$Page$media$title.stub(_then(_instance))
        : CopyWith$Query$Search$Page$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$Search$Page$media$startDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Query$Search$Page$media$startDate.stub(_then(_instance))
        : CopyWith$Query$Search$Page$media$startDate(
            local$startDate, (e) => call(startDate: e));
  }

  CopyWith$Query$Search$Page$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$Search$Page$media$coverImage.stub(_then(_instance))
        : CopyWith$Query$Search$Page$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$Search$Page$media<TRes>
    implements CopyWith$Query$Search$Page$media<TRes> {
  _CopyWithStubImpl$Query$Search$Page$media(this._res);

  TRes _res;

  call({
    int? id,
    Query$Search$Page$media$title? title,
    Enum$MediaType? type,
    Query$Search$Page$media$startDate? startDate,
    int? seasonYear,
    Enum$MediaStatus? status,
    Enum$MediaFormat? format,
    int? meanScore,
    int? popularity,
    Query$Search$Page$media$coverImage? coverImage,
    int? episodes,
    int? chapters,
    int? volumes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Search$Page$media$title<TRes> get title =>
      CopyWith$Query$Search$Page$media$title.stub(_res);

  CopyWith$Query$Search$Page$media$startDate<TRes> get startDate =>
      CopyWith$Query$Search$Page$media$startDate.stub(_res);

  CopyWith$Query$Search$Page$media$coverImage<TRes> get coverImage =>
      CopyWith$Query$Search$Page$media$coverImage.stub(_res);
}

class Query$Search$Page$media$title {
  Query$Search$Page$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$Search$Page$media$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Search$Page$media$title(
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
    if (!(other is Query$Search$Page$media$title) ||
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

extension UtilityExtension$Query$Search$Page$media$title
    on Query$Search$Page$media$title {
  CopyWith$Query$Search$Page$media$title<Query$Search$Page$media$title>
      get copyWith => CopyWith$Query$Search$Page$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Search$Page$media$title<TRes> {
  factory CopyWith$Query$Search$Page$media$title(
    Query$Search$Page$media$title instance,
    TRes Function(Query$Search$Page$media$title) then,
  ) = _CopyWithImpl$Query$Search$Page$media$title;

  factory CopyWith$Query$Search$Page$media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$Page$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Search$Page$media$title<TRes>
    implements CopyWith$Query$Search$Page$media$title<TRes> {
  _CopyWithImpl$Query$Search$Page$media$title(
    this._instance,
    this._then,
  );

  final Query$Search$Page$media$title _instance;

  final TRes Function(Query$Search$Page$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$Page$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Search$Page$media$title<TRes>
    implements CopyWith$Query$Search$Page$media$title<TRes> {
  _CopyWithStubImpl$Query$Search$Page$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Search$Page$media$startDate {
  Query$Search$Page$media$startDate({
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$Search$Page$media$startDate.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Query$Search$Page$media$startDate(
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Search$Page$media$startDate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Query$Search$Page$media$startDate
    on Query$Search$Page$media$startDate {
  CopyWith$Query$Search$Page$media$startDate<Query$Search$Page$media$startDate>
      get copyWith => CopyWith$Query$Search$Page$media$startDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Search$Page$media$startDate<TRes> {
  factory CopyWith$Query$Search$Page$media$startDate(
    Query$Search$Page$media$startDate instance,
    TRes Function(Query$Search$Page$media$startDate) then,
  ) = _CopyWithImpl$Query$Search$Page$media$startDate;

  factory CopyWith$Query$Search$Page$media$startDate.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$Page$media$startDate;

  TRes call({
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Search$Page$media$startDate<TRes>
    implements CopyWith$Query$Search$Page$media$startDate<TRes> {
  _CopyWithImpl$Query$Search$Page$media$startDate(
    this._instance,
    this._then,
  );

  final Query$Search$Page$media$startDate _instance;

  final TRes Function(Query$Search$Page$media$startDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$Page$media$startDate(
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Search$Page$media$startDate<TRes>
    implements CopyWith$Query$Search$Page$media$startDate<TRes> {
  _CopyWithStubImpl$Query$Search$Page$media$startDate(this._res);

  TRes _res;

  call({
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Query$Search$Page$media$coverImage {
  Query$Search$Page$media$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$Search$Page$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$Search$Page$media$coverImage(
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
    if (!(other is Query$Search$Page$media$coverImage) ||
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

extension UtilityExtension$Query$Search$Page$media$coverImage
    on Query$Search$Page$media$coverImage {
  CopyWith$Query$Search$Page$media$coverImage<
          Query$Search$Page$media$coverImage>
      get copyWith => CopyWith$Query$Search$Page$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Search$Page$media$coverImage<TRes> {
  factory CopyWith$Query$Search$Page$media$coverImage(
    Query$Search$Page$media$coverImage instance,
    TRes Function(Query$Search$Page$media$coverImage) then,
  ) = _CopyWithImpl$Query$Search$Page$media$coverImage;

  factory CopyWith$Query$Search$Page$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$Page$media$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Search$Page$media$coverImage<TRes>
    implements CopyWith$Query$Search$Page$media$coverImage<TRes> {
  _CopyWithImpl$Query$Search$Page$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$Search$Page$media$coverImage _instance;

  final TRes Function(Query$Search$Page$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$Page$media$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Search$Page$media$coverImage<TRes>
    implements CopyWith$Query$Search$Page$media$coverImage<TRes> {
  _CopyWithStubImpl$Query$Search$Page$media$coverImage(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}
