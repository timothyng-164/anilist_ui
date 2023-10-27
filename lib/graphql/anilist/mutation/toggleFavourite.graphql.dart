import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ToggleFavourite {
  factory Variables$Mutation$ToggleFavourite({
    int? animeId,
    int? mangaId,
    int? characterId,
    int? staffId,
    int? studioId,
  }) =>
      Variables$Mutation$ToggleFavourite._({
        if (animeId != null) r'animeId': animeId,
        if (mangaId != null) r'mangaId': mangaId,
        if (characterId != null) r'characterId': characterId,
        if (staffId != null) r'staffId': staffId,
        if (studioId != null) r'studioId': studioId,
      });

  Variables$Mutation$ToggleFavourite._(this._$data);

  factory Variables$Mutation$ToggleFavourite.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('animeId')) {
      final l$animeId = data['animeId'];
      result$data['animeId'] = (l$animeId as int?);
    }
    if (data.containsKey('mangaId')) {
      final l$mangaId = data['mangaId'];
      result$data['mangaId'] = (l$mangaId as int?);
    }
    if (data.containsKey('characterId')) {
      final l$characterId = data['characterId'];
      result$data['characterId'] = (l$characterId as int?);
    }
    if (data.containsKey('staffId')) {
      final l$staffId = data['staffId'];
      result$data['staffId'] = (l$staffId as int?);
    }
    if (data.containsKey('studioId')) {
      final l$studioId = data['studioId'];
      result$data['studioId'] = (l$studioId as int?);
    }
    return Variables$Mutation$ToggleFavourite._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get animeId => (_$data['animeId'] as int?);

  int? get mangaId => (_$data['mangaId'] as int?);

  int? get characterId => (_$data['characterId'] as int?);

  int? get staffId => (_$data['staffId'] as int?);

  int? get studioId => (_$data['studioId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('animeId')) {
      final l$animeId = animeId;
      result$data['animeId'] = l$animeId;
    }
    if (_$data.containsKey('mangaId')) {
      final l$mangaId = mangaId;
      result$data['mangaId'] = l$mangaId;
    }
    if (_$data.containsKey('characterId')) {
      final l$characterId = characterId;
      result$data['characterId'] = l$characterId;
    }
    if (_$data.containsKey('staffId')) {
      final l$staffId = staffId;
      result$data['staffId'] = l$staffId;
    }
    if (_$data.containsKey('studioId')) {
      final l$studioId = studioId;
      result$data['studioId'] = l$studioId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleFavourite<
          Variables$Mutation$ToggleFavourite>
      get copyWith => CopyWith$Variables$Mutation$ToggleFavourite(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ToggleFavourite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$animeId = animeId;
    final lOther$animeId = other.animeId;
    if (_$data.containsKey('animeId') != other._$data.containsKey('animeId')) {
      return false;
    }
    if (l$animeId != lOther$animeId) {
      return false;
    }
    final l$mangaId = mangaId;
    final lOther$mangaId = other.mangaId;
    if (_$data.containsKey('mangaId') != other._$data.containsKey('mangaId')) {
      return false;
    }
    if (l$mangaId != lOther$mangaId) {
      return false;
    }
    final l$characterId = characterId;
    final lOther$characterId = other.characterId;
    if (_$data.containsKey('characterId') !=
        other._$data.containsKey('characterId')) {
      return false;
    }
    if (l$characterId != lOther$characterId) {
      return false;
    }
    final l$staffId = staffId;
    final lOther$staffId = other.staffId;
    if (_$data.containsKey('staffId') != other._$data.containsKey('staffId')) {
      return false;
    }
    if (l$staffId != lOther$staffId) {
      return false;
    }
    final l$studioId = studioId;
    final lOther$studioId = other.studioId;
    if (_$data.containsKey('studioId') !=
        other._$data.containsKey('studioId')) {
      return false;
    }
    if (l$studioId != lOther$studioId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$animeId = animeId;
    final l$mangaId = mangaId;
    final l$characterId = characterId;
    final l$staffId = staffId;
    final l$studioId = studioId;
    return Object.hashAll([
      _$data.containsKey('animeId') ? l$animeId : const {},
      _$data.containsKey('mangaId') ? l$mangaId : const {},
      _$data.containsKey('characterId') ? l$characterId : const {},
      _$data.containsKey('staffId') ? l$staffId : const {},
      _$data.containsKey('studioId') ? l$studioId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleFavourite<TRes> {
  factory CopyWith$Variables$Mutation$ToggleFavourite(
    Variables$Mutation$ToggleFavourite instance,
    TRes Function(Variables$Mutation$ToggleFavourite) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleFavourite;

  factory CopyWith$Variables$Mutation$ToggleFavourite.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleFavourite;

  TRes call({
    int? animeId,
    int? mangaId,
    int? characterId,
    int? staffId,
    int? studioId,
  });
}

class _CopyWithImpl$Variables$Mutation$ToggleFavourite<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavourite<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleFavourite(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleFavourite _instance;

  final TRes Function(Variables$Mutation$ToggleFavourite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? animeId = _undefined,
    Object? mangaId = _undefined,
    Object? characterId = _undefined,
    Object? staffId = _undefined,
    Object? studioId = _undefined,
  }) =>
      _then(Variables$Mutation$ToggleFavourite._({
        ..._instance._$data,
        if (animeId != _undefined) 'animeId': (animeId as int?),
        if (mangaId != _undefined) 'mangaId': (mangaId as int?),
        if (characterId != _undefined) 'characterId': (characterId as int?),
        if (staffId != _undefined) 'staffId': (staffId as int?),
        if (studioId != _undefined) 'studioId': (studioId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleFavourite<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavourite<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleFavourite(this._res);

  TRes _res;

  call({
    int? animeId,
    int? mangaId,
    int? characterId,
    int? staffId,
    int? studioId,
  }) =>
      _res;
}

class Mutation$ToggleFavourite {
  Mutation$ToggleFavourite({
    this.ToggleFavourite,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleFavourite.fromJson(Map<String, dynamic> json) {
    final l$ToggleFavourite = json['ToggleFavourite'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite(
      ToggleFavourite: l$ToggleFavourite == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite.fromJson(
              (l$ToggleFavourite as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavourite$ToggleFavourite? ToggleFavourite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleFavourite = ToggleFavourite;
    _resultData['ToggleFavourite'] = l$ToggleFavourite?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleFavourite = ToggleFavourite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleFavourite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleFavourite = ToggleFavourite;
    final lOther$ToggleFavourite = other.ToggleFavourite;
    if (l$ToggleFavourite != lOther$ToggleFavourite) {
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

extension UtilityExtension$Mutation$ToggleFavourite
    on Mutation$ToggleFavourite {
  CopyWith$Mutation$ToggleFavourite<Mutation$ToggleFavourite> get copyWith =>
      CopyWith$Mutation$ToggleFavourite(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleFavourite<TRes> {
  factory CopyWith$Mutation$ToggleFavourite(
    Mutation$ToggleFavourite instance,
    TRes Function(Mutation$ToggleFavourite) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite;

  factory CopyWith$Mutation$ToggleFavourite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite;

  TRes call({
    Mutation$ToggleFavourite$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> get ToggleFavourite;
}

class _CopyWithImpl$Mutation$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavourite<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite _instance;

  final TRes Function(Mutation$ToggleFavourite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleFavourite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite(
        ToggleFavourite: ToggleFavourite == _undefined
            ? _instance.ToggleFavourite
            : (ToggleFavourite as Mutation$ToggleFavourite$ToggleFavourite?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> get ToggleFavourite {
    final local$ToggleFavourite = _instance.ToggleFavourite;
    return local$ToggleFavourite == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite(
            local$ToggleFavourite, (e) => call(ToggleFavourite: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavourite<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavourite$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> get ToggleFavourite =>
      CopyWith$Mutation$ToggleFavourite$ToggleFavourite.stub(_res);
}

const documentNodeMutationToggleFavourite = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleFavourite'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'animeId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mangaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'characterId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'staffId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'studioId')),
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
        name: NameNode(value: 'ToggleFavourite'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'animeId'),
            value: VariableNode(name: NameNode(value: 'animeId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mangaId'),
            value: VariableNode(name: NameNode(value: 'mangaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'characterId'),
            value: VariableNode(name: NameNode(value: 'characterId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'staffId'),
            value: VariableNode(name: NameNode(value: 'staffId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'studioId'),
            value: VariableNode(name: NameNode(value: 'studioId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'anime'),
            alias: null,
            arguments: [],
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
            name: NameNode(value: 'manga'),
            alias: null,
            arguments: [],
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
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [],
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
            name: NameNode(value: 'staff'),
            alias: null,
            arguments: [],
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
            name: NameNode(value: 'studios'),
            alias: null,
            arguments: [],
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
]);
Mutation$ToggleFavourite _parserFn$Mutation$ToggleFavourite(
        Map<String, dynamic> data) =>
    Mutation$ToggleFavourite.fromJson(data);
typedef OnMutationCompleted$Mutation$ToggleFavourite = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ToggleFavourite?,
);

class Options$Mutation$ToggleFavourite
    extends graphql.MutationOptions<Mutation$ToggleFavourite> {
  Options$Mutation$ToggleFavourite({
    String? operationName,
    Variables$Mutation$ToggleFavourite? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavourite? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavourite? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavourite>? update,
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
                        : _parserFn$Mutation$ToggleFavourite(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavourite,
          parserFn: _parserFn$Mutation$ToggleFavourite,
        );

  final OnMutationCompleted$Mutation$ToggleFavourite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleFavourite
    extends graphql.WatchQueryOptions<Mutation$ToggleFavourite> {
  WatchOptions$Mutation$ToggleFavourite({
    String? operationName,
    Variables$Mutation$ToggleFavourite? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavourite? typedOptimisticResult,
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
          document: documentNodeMutationToggleFavourite,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ToggleFavourite,
        );
}

extension ClientExtension$Mutation$ToggleFavourite on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleFavourite>> mutate$ToggleFavourite(
          [Options$Mutation$ToggleFavourite? options]) async =>
      await this.mutate(options ?? Options$Mutation$ToggleFavourite());
  graphql.ObservableQuery<Mutation$ToggleFavourite>
      watchMutation$ToggleFavourite(
              [WatchOptions$Mutation$ToggleFavourite? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$ToggleFavourite());
}

class Mutation$ToggleFavourite$HookResult {
  Mutation$ToggleFavourite$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ToggleFavourite runMutation;

  final graphql.QueryResult<Mutation$ToggleFavourite> result;
}

Mutation$ToggleFavourite$HookResult useMutation$ToggleFavourite(
    [WidgetOptions$Mutation$ToggleFavourite? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ToggleFavourite());
  return Mutation$ToggleFavourite$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleFavourite>
    useWatchMutation$ToggleFavourite(
            [WatchOptions$Mutation$ToggleFavourite? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$ToggleFavourite());

class WidgetOptions$Mutation$ToggleFavourite
    extends graphql.MutationOptions<Mutation$ToggleFavourite> {
  WidgetOptions$Mutation$ToggleFavourite({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavourite? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavourite? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavourite>? update,
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
                        : _parserFn$Mutation$ToggleFavourite(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavourite,
          parserFn: _parserFn$Mutation$ToggleFavourite,
        );

  final OnMutationCompleted$Mutation$ToggleFavourite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleFavourite
    = graphql.MultiSourceResult<Mutation$ToggleFavourite> Function({
  Variables$Mutation$ToggleFavourite? variables,
  Object? optimisticResult,
  Mutation$ToggleFavourite? typedOptimisticResult,
});
typedef Builder$Mutation$ToggleFavourite = widgets.Widget Function(
  RunMutation$Mutation$ToggleFavourite,
  graphql.QueryResult<Mutation$ToggleFavourite>?,
);

class Mutation$ToggleFavourite$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleFavourite> {
  Mutation$ToggleFavourite$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleFavourite? options,
    required Builder$Mutation$ToggleFavourite builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ToggleFavourite(),
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

class Mutation$ToggleFavourite$ToggleFavourite {
  Mutation$ToggleFavourite$ToggleFavourite({
    this.anime,
    this.manga,
    this.characters,
    this.staff,
    this.studios,
    this.$__typename = 'Favourites',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite.fromJson(
      Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$characters = json['characters'];
    final l$staff = json['staff'];
    final l$studios = json['studios'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite(
      anime: l$anime == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      characters: l$characters == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      staff: l$staff == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$staff.fromJson(
              (l$staff as Map<String, dynamic>)),
      studios: l$studios == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$studios.fromJson(
              (l$studios as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavourite$ToggleFavourite$anime? anime;

  final Mutation$ToggleFavourite$ToggleFavourite$manga? manga;

  final Mutation$ToggleFavourite$ToggleFavourite$characters? characters;

  final Mutation$ToggleFavourite$ToggleFavourite$staff? staff;

  final Mutation$ToggleFavourite$ToggleFavourite$studios? studios;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$studios = studios;
    _resultData['studios'] = l$studios?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$characters = characters;
    final l$staff = staff;
    final l$studios = studios;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$characters,
      l$staff,
      l$studios,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite) ||
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
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
      return false;
    }
    final l$studios = studios;
    final lOther$studios = other.studios;
    if (l$studios != lOther$studios) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite
    on Mutation$ToggleFavourite$ToggleFavourite {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite<
          Mutation$ToggleFavourite$ToggleFavourite>
      get copyWith => CopyWith$Mutation$ToggleFavourite$ToggleFavourite(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite(
    Mutation$ToggleFavourite$ToggleFavourite instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite;

  TRes call({
    Mutation$ToggleFavourite$ToggleFavourite$anime? anime,
    Mutation$ToggleFavourite$ToggleFavourite$manga? manga,
    Mutation$ToggleFavourite$ToggleFavourite$characters? characters,
    Mutation$ToggleFavourite$ToggleFavourite$staff? staff,
    Mutation$ToggleFavourite$ToggleFavourite$studios? studios,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> get anime;
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> get manga;
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters<TRes>
      get characters;
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff<TRes> get staff;
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios<TRes> get studios;
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? characters = _undefined,
    Object? staff = _undefined,
    Object? studios = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Mutation$ToggleFavourite$ToggleFavourite$anime?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Mutation$ToggleFavourite$ToggleFavourite$manga?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters
                as Mutation$ToggleFavourite$ToggleFavourite$characters?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as Mutation$ToggleFavourite$ToggleFavourite$staff?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as Mutation$ToggleFavourite$ToggleFavourite$studios?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime(
            local$anime, (e) => call(anime: e));
  }

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga(
            local$manga, (e) => call(manga: e));
  }

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters<TRes>
      get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters(
            local$characters, (e) => call(characters: e));
  }

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff(
            local$staff, (e) => call(staff: e));
  }

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios<TRes> get studios {
    final local$studios = _instance.studios;
    return local$studios == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios(
            local$studios, (e) => call(studios: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavourite$ToggleFavourite$anime? anime,
    Mutation$ToggleFavourite$ToggleFavourite$manga? manga,
    Mutation$ToggleFavourite$ToggleFavourite$characters? characters,
    Mutation$ToggleFavourite$ToggleFavourite$staff? staff,
    Mutation$ToggleFavourite$ToggleFavourite$studios? studios,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> get anime =>
      CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime.stub(_res);

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> get manga =>
      CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga.stub(_res);

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters<TRes>
      get characters =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters.stub(
              _res);

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff<TRes> get staff =>
      CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff.stub(_res);

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios<TRes> get studios =>
      CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios.stub(_res);
}

class Mutation$ToggleFavourite$ToggleFavourite$anime {
  Mutation$ToggleFavourite$ToggleFavourite$anime({
    this.pageInfo,
    this.$__typename = 'MediaConnection',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$anime.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$anime(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$anime) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$anime
    on Mutation$ToggleFavourite$ToggleFavourite$anime {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<
          Mutation$ToggleFavourite$ToggleFavourite$anime>
      get copyWith => CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime(
    Mutation$ToggleFavourite$ToggleFavourite$anime instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$anime) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime;

  TRes call({
    Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$anime _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$anime(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo.stub(
              _res);
}

class Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo {
  Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo
    on Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<
          Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
    Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleFavourite$ToggleFavourite$manga {
  Mutation$ToggleFavourite$ToggleFavourite$manga({
    this.pageInfo,
    this.$__typename = 'MediaConnection',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$manga.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$manga(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$manga) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$manga
    on Mutation$ToggleFavourite$ToggleFavourite$manga {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<
          Mutation$ToggleFavourite$ToggleFavourite$manga>
      get copyWith => CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga(
    Mutation$ToggleFavourite$ToggleFavourite$manga instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$manga) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga;

  TRes call({
    Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$manga _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$manga(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo.stub(
              _res);
}

class Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo {
  Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo
    on Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<
          Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
    Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleFavourite$ToggleFavourite$characters {
  Mutation$ToggleFavourite$ToggleFavourite$characters({
    this.pageInfo,
    this.$__typename = 'CharacterConnection',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$characters.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$characters(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$characters
    on Mutation$ToggleFavourite$ToggleFavourite$characters {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters<
          Mutation$ToggleFavourite$ToggleFavourite$characters>
      get copyWith =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters<
    TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters(
    Mutation$ToggleFavourite$ToggleFavourite$characters instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$characters) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$characters;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$characters;

  TRes call({
    Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$characters<TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$characters(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$characters _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$characters)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$characters(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo
            .stub(_then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$characters<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$characters(
      this._res);

  TRes _res;

  call({
    Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo
              .stub(_res);
}

class Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo {
  Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo
    on Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo<
          Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo(
    Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo)
        then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo<
            TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo _instance;

  final TRes Function(
      Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$characters$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleFavourite$ToggleFavourite$staff {
  Mutation$ToggleFavourite$ToggleFavourite$staff({
    this.pageInfo,
    this.$__typename = 'StaffConnection',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$staff.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$staff(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$staff) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$staff
    on Mutation$ToggleFavourite$ToggleFavourite$staff {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff<
          Mutation$ToggleFavourite$ToggleFavourite$staff>
      get copyWith => CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff<TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff(
    Mutation$ToggleFavourite$ToggleFavourite$staff instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$staff) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$staff;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$staff;

  TRes call({
    Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$staff<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$staff(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$staff _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$staff(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$staff<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$staff(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo.stub(
              _res);
}

class Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo {
  Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo
    on Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo<
          Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo(
    Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$staff$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleFavourite$ToggleFavourite$studios {
  Mutation$ToggleFavourite$ToggleFavourite$studios({
    this.pageInfo,
    this.$__typename = 'StudioConnection',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$studios.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$studios(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$studios) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$studios
    on Mutation$ToggleFavourite$ToggleFavourite$studios {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios<
          Mutation$ToggleFavourite$ToggleFavourite$studios>
      get copyWith => CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios<TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios(
    Mutation$ToggleFavourite$ToggleFavourite$studios instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$studios) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$studios;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$studios;

  TRes call({
    Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$studios<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$studios(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$studios _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$studios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$studios(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo
            .stub(_then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$studios<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$studios(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo
              .stub(_res);
}

class Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo {
  Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo
    on Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo<
          Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo(
    Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo)
        then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo<
            TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$studios$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}
