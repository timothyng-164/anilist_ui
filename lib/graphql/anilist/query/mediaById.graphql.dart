import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import '../schema.graphql.dart';

class Variables$Query$GetMediaById {
  factory Variables$Query$GetMediaById({
    int? id,
    Enum$MediaType? type,
  }) =>
      Variables$Query$GetMediaById._({
        if (id != null) r'id': id,
        if (type != null) r'type': type,
      });

  Variables$Query$GetMediaById._(this._$data);

  factory Variables$Query$GetMediaById.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$GetMediaById._(result$data);
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

  CopyWith$Variables$Query$GetMediaById<Variables$Query$GetMediaById>
      get copyWith => CopyWith$Variables$Query$GetMediaById(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetMediaById) ||
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

abstract class CopyWith$Variables$Query$GetMediaById<TRes> {
  factory CopyWith$Variables$Query$GetMediaById(
    Variables$Query$GetMediaById instance,
    TRes Function(Variables$Query$GetMediaById) then,
  ) = _CopyWithImpl$Variables$Query$GetMediaById;

  factory CopyWith$Variables$Query$GetMediaById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMediaById;

  TRes call({
    int? id,
    Enum$MediaType? type,
  });
}

class _CopyWithImpl$Variables$Query$GetMediaById<TRes>
    implements CopyWith$Variables$Query$GetMediaById<TRes> {
  _CopyWithImpl$Variables$Query$GetMediaById(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMediaById _instance;

  final TRes Function(Variables$Query$GetMediaById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Variables$Query$GetMediaById._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetMediaById<TRes>
    implements CopyWith$Variables$Query$GetMediaById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMediaById(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
  }) =>
      _res;
}

class Query$GetMediaById {
  Query$GetMediaById({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$GetMediaById.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById(
      Media: l$Media == null
          ? null
          : Query$GetMediaById$Media.fromJson(
              (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMediaById$Media? Media;

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
    if (!(other is Query$GetMediaById) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetMediaById on Query$GetMediaById {
  CopyWith$Query$GetMediaById<Query$GetMediaById> get copyWith =>
      CopyWith$Query$GetMediaById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMediaById<TRes> {
  factory CopyWith$Query$GetMediaById(
    Query$GetMediaById instance,
    TRes Function(Query$GetMediaById) then,
  ) = _CopyWithImpl$Query$GetMediaById;

  factory CopyWith$Query$GetMediaById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById;

  TRes call({
    Query$GetMediaById$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$GetMediaById$Media<TRes> get Media;
}

class _CopyWithImpl$Query$GetMediaById<TRes>
    implements CopyWith$Query$GetMediaById<TRes> {
  _CopyWithImpl$Query$GetMediaById(
    this._instance,
    this._then,
  );

  final Query$GetMediaById _instance;

  final TRes Function(Query$GetMediaById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$GetMediaById$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMediaById$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$GetMediaById$Media.stub(_then(_instance))
        : CopyWith$Query$GetMediaById$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaById<TRes>
    implements CopyWith$Query$GetMediaById<TRes> {
  _CopyWithStubImpl$Query$GetMediaById(this._res);

  TRes _res;

  call({
    Query$GetMediaById$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMediaById$Media<TRes> get Media =>
      CopyWith$Query$GetMediaById$Media.stub(_res);
}

const documentNodeQueryGetMediaById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMediaById'),
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
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'romaji'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'english'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'native'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
            name: NameNode(value: 'format'),
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
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'asHtml'),
                value: BooleanValueNode(value: false),
              )
            ],
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
                name: NameNode(value: 'day'),
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
            name: NameNode(value: 'endDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'day'),
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
            name: NameNode(value: 'season'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seasonYear'),
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
            name: NameNode(value: 'duration'),
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
            name: NameNode(value: 'source'),
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
                name: NameNode(value: 'large'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'extraLarge'),
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
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'synonyms'),
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
            name: NameNode(value: 'favourites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isLocked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tags'),
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
                name: NameNode(value: 'rank'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isMediaSpoiler'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isGeneralSpoiler'),
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
            name: NameNode(value: 'studios'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'isMain'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'node'),
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
            name: NameNode(value: 'relations'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'relationType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'node'),
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
                        name: NameNode(value: 'format'),
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
            name: NameNode(value: 'recommendations'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'RATING_DESC')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'rating'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'mediaRecommendation'),
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
                        name: NameNode(value: 'format'),
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
            name: NameNode(value: 'mediaListEntry'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'isFavourite'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isLocked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavouriteBlocked'),
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
Query$GetMediaById _parserFn$Query$GetMediaById(Map<String, dynamic> data) =>
    Query$GetMediaById.fromJson(data);
typedef OnQueryComplete$Query$GetMediaById = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMediaById?,
);

class Options$Query$GetMediaById
    extends graphql.QueryOptions<Query$GetMediaById> {
  Options$Query$GetMediaById({
    String? operationName,
    Variables$Query$GetMediaById? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMediaById? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMediaById? onComplete,
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
                    data == null ? null : _parserFn$Query$GetMediaById(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMediaById,
          parserFn: _parserFn$Query$GetMediaById,
        );

  final OnQueryComplete$Query$GetMediaById? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMediaById
    extends graphql.WatchQueryOptions<Query$GetMediaById> {
  WatchOptions$Query$GetMediaById({
    String? operationName,
    Variables$Query$GetMediaById? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMediaById? typedOptimisticResult,
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
          document: documentNodeQueryGetMediaById,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMediaById,
        );
}

class FetchMoreOptions$Query$GetMediaById extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMediaById({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetMediaById? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetMediaById,
        );
}

extension ClientExtension$Query$GetMediaById on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMediaById>> query$GetMediaById(
          [Options$Query$GetMediaById? options]) async =>
      await this.query(options ?? Options$Query$GetMediaById());
  graphql.ObservableQuery<Query$GetMediaById> watchQuery$GetMediaById(
          [WatchOptions$Query$GetMediaById? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetMediaById());
  void writeQuery$GetMediaById({
    required Query$GetMediaById data,
    Variables$Query$GetMediaById? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetMediaById),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMediaById? readQuery$GetMediaById({
    Variables$Query$GetMediaById? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetMediaById),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMediaById.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMediaById> useQuery$GetMediaById(
        [Options$Query$GetMediaById? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetMediaById());
graphql.ObservableQuery<Query$GetMediaById> useWatchQuery$GetMediaById(
        [WatchOptions$Query$GetMediaById? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetMediaById());

class Query$GetMediaById$Widget
    extends graphql_flutter.Query<Query$GetMediaById> {
  Query$GetMediaById$Widget({
    widgets.Key? key,
    Options$Query$GetMediaById? options,
    required graphql_flutter.QueryBuilder<Query$GetMediaById> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMediaById(),
          builder: builder,
        );
}

class Query$GetMediaById$Media {
  Query$GetMediaById$Media({
    required this.id,
    this.title,
    this.type,
    this.format,
    this.status,
    this.description,
    this.startDate,
    this.endDate,
    this.season,
    this.seasonYear,
    this.episodes,
    this.duration,
    this.chapters,
    this.volumes,
    this.source,
    this.coverImage,
    this.genres,
    this.synonyms,
    this.meanScore,
    this.popularity,
    this.favourites,
    this.isLocked,
    this.tags,
    this.studios,
    this.relations,
    this.recommendations,
    this.mediaListEntry,
    required this.isFavourite,
    required this.isFavouriteBlocked,
    this.$__typename = 'Media',
  });

  factory Query$GetMediaById$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$status = json['status'];
    final l$description = json['description'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$season = json['season'];
    final l$seasonYear = json['seasonYear'];
    final l$episodes = json['episodes'];
    final l$duration = json['duration'];
    final l$chapters = json['chapters'];
    final l$volumes = json['volumes'];
    final l$source = json['source'];
    final l$coverImage = json['coverImage'];
    final l$genres = json['genres'];
    final l$synonyms = json['synonyms'];
    final l$meanScore = json['meanScore'];
    final l$popularity = json['popularity'];
    final l$favourites = json['favourites'];
    final l$isLocked = json['isLocked'];
    final l$tags = json['tags'];
    final l$studios = json['studios'];
    final l$relations = json['relations'];
    final l$recommendations = json['recommendations'];
    final l$mediaListEntry = json['mediaListEntry'];
    final l$isFavourite = json['isFavourite'];
    final l$isFavouriteBlocked = json['isFavouriteBlocked'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$GetMediaById$Media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      description: (l$description as String?),
      startDate: l$startDate == null
          ? null
          : Query$GetMediaById$Media$startDate.fromJson(
              (l$startDate as Map<String, dynamic>)),
      endDate: l$endDate == null
          ? null
          : Query$GetMediaById$Media$endDate.fromJson(
              (l$endDate as Map<String, dynamic>)),
      season: l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String)),
      seasonYear: (l$seasonYear as int?),
      episodes: (l$episodes as int?),
      duration: (l$duration as int?),
      chapters: (l$chapters as int?),
      volumes: (l$volumes as int?),
      source: l$source == null
          ? null
          : fromJson$Enum$MediaSource((l$source as String)),
      coverImage: l$coverImage == null
          ? null
          : Query$GetMediaById$Media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      synonyms:
          (l$synonyms as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      meanScore: (l$meanScore as int?),
      popularity: (l$popularity as int?),
      favourites: (l$favourites as int?),
      isLocked: (l$isLocked as bool?),
      tags: (l$tags as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetMediaById$Media$tags.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      studios: l$studios == null
          ? null
          : Query$GetMediaById$Media$studios.fromJson(
              (l$studios as Map<String, dynamic>)),
      relations: l$relations == null
          ? null
          : Query$GetMediaById$Media$relations.fromJson(
              (l$relations as Map<String, dynamic>)),
      recommendations: l$recommendations == null
          ? null
          : Query$GetMediaById$Media$recommendations.fromJson(
              (l$recommendations as Map<String, dynamic>)),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : Query$GetMediaById$Media$mediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
      isFavourite: (l$isFavourite as bool),
      isFavouriteBlocked: (l$isFavouriteBlocked as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetMediaById$Media$title? title;

  final Enum$MediaType? type;

  final Enum$MediaFormat? format;

  final Enum$MediaStatus? status;

  final String? description;

  final Query$GetMediaById$Media$startDate? startDate;

  final Query$GetMediaById$Media$endDate? endDate;

  final Enum$MediaSeason? season;

  final int? seasonYear;

  final int? episodes;

  final int? duration;

  final int? chapters;

  final int? volumes;

  final Enum$MediaSource? source;

  final Query$GetMediaById$Media$coverImage? coverImage;

  final List<String?>? genres;

  final List<String?>? synonyms;

  final int? meanScore;

  final int? popularity;

  final int? favourites;

  final bool? isLocked;

  final List<Query$GetMediaById$Media$tags?>? tags;

  final Query$GetMediaById$Media$studios? studios;

  final Query$GetMediaById$Media$relations? relations;

  final Query$GetMediaById$Media$recommendations? recommendations;

  final Query$GetMediaById$Media$mediaListEntry? mediaListEntry;

  final bool isFavourite;

  final bool isFavouriteBlocked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toJson();
    final l$season = season;
    _resultData['season'] =
        l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    final l$seasonYear = seasonYear;
    _resultData['seasonYear'] = l$seasonYear;
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$volumes = volumes;
    _resultData['volumes'] = l$volumes;
    final l$source = source;
    _resultData['source'] =
        l$source == null ? null : toJson$Enum$MediaSource(l$source);
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$synonyms = synonyms;
    _resultData['synonyms'] = l$synonyms?.map((e) => e).toList();
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$popularity = popularity;
    _resultData['popularity'] = l$popularity;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$tags = tags;
    _resultData['tags'] = l$tags?.map((e) => e?.toJson()).toList();
    final l$studios = studios;
    _resultData['studios'] = l$studios?.toJson();
    final l$relations = relations;
    _resultData['relations'] = l$relations?.toJson();
    final l$recommendations = recommendations;
    _resultData['recommendations'] = l$recommendations?.toJson();
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    _resultData['isFavouriteBlocked'] = l$isFavouriteBlocked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$format = format;
    final l$status = status;
    final l$description = description;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$episodes = episodes;
    final l$duration = duration;
    final l$chapters = chapters;
    final l$volumes = volumes;
    final l$source = source;
    final l$coverImage = coverImage;
    final l$genres = genres;
    final l$synonyms = synonyms;
    final l$meanScore = meanScore;
    final l$popularity = popularity;
    final l$favourites = favourites;
    final l$isLocked = isLocked;
    final l$tags = tags;
    final l$studios = studios;
    final l$relations = relations;
    final l$recommendations = recommendations;
    final l$mediaListEntry = mediaListEntry;
    final l$isFavourite = isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$format,
      l$status,
      l$description,
      l$startDate,
      l$endDate,
      l$season,
      l$seasonYear,
      l$episodes,
      l$duration,
      l$chapters,
      l$volumes,
      l$source,
      l$coverImage,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$synonyms == null ? null : Object.hashAll(l$synonyms.map((v) => v)),
      l$meanScore,
      l$popularity,
      l$favourites,
      l$isLocked,
      l$tags == null ? null : Object.hashAll(l$tags.map((v) => v)),
      l$studios,
      l$relations,
      l$recommendations,
      l$mediaListEntry,
      l$isFavourite,
      l$isFavouriteBlocked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media) ||
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
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
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
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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
    final l$synonyms = synonyms;
    final lOther$synonyms = other.synonyms;
    if (l$synonyms != null && lOther$synonyms != null) {
      if (l$synonyms.length != lOther$synonyms.length) {
        return false;
      }
      for (int i = 0; i < l$synonyms.length; i++) {
        final l$synonyms$entry = l$synonyms[i];
        final lOther$synonyms$entry = lOther$synonyms[i];
        if (l$synonyms$entry != lOther$synonyms$entry) {
          return false;
        }
      }
    } else if (l$synonyms != lOther$synonyms) {
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
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
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
    final l$studios = studios;
    final lOther$studios = other.studios;
    if (l$studios != lOther$studios) {
      return false;
    }
    final l$relations = relations;
    final lOther$relations = other.relations;
    if (l$relations != lOther$relations) {
      return false;
    }
    final l$recommendations = recommendations;
    final lOther$recommendations = other.recommendations;
    if (l$recommendations != lOther$recommendations) {
      return false;
    }
    final l$mediaListEntry = mediaListEntry;
    final lOther$mediaListEntry = other.mediaListEntry;
    if (l$mediaListEntry != lOther$mediaListEntry) {
      return false;
    }
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) {
      return false;
    }
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final lOther$isFavouriteBlocked = other.isFavouriteBlocked;
    if (l$isFavouriteBlocked != lOther$isFavouriteBlocked) {
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

extension UtilityExtension$Query$GetMediaById$Media
    on Query$GetMediaById$Media {
  CopyWith$Query$GetMediaById$Media<Query$GetMediaById$Media> get copyWith =>
      CopyWith$Query$GetMediaById$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMediaById$Media<TRes> {
  factory CopyWith$Query$GetMediaById$Media(
    Query$GetMediaById$Media instance,
    TRes Function(Query$GetMediaById$Media) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media;

  factory CopyWith$Query$GetMediaById$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media;

  TRes call({
    int? id,
    Query$GetMediaById$Media$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    Enum$MediaStatus? status,
    String? description,
    Query$GetMediaById$Media$startDate? startDate,
    Query$GetMediaById$Media$endDate? endDate,
    Enum$MediaSeason? season,
    int? seasonYear,
    int? episodes,
    int? duration,
    int? chapters,
    int? volumes,
    Enum$MediaSource? source,
    Query$GetMediaById$Media$coverImage? coverImage,
    List<String?>? genres,
    List<String?>? synonyms,
    int? meanScore,
    int? popularity,
    int? favourites,
    bool? isLocked,
    List<Query$GetMediaById$Media$tags?>? tags,
    Query$GetMediaById$Media$studios? studios,
    Query$GetMediaById$Media$relations? relations,
    Query$GetMediaById$Media$recommendations? recommendations,
    Query$GetMediaById$Media$mediaListEntry? mediaListEntry,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    String? $__typename,
  });
  CopyWith$Query$GetMediaById$Media$title<TRes> get title;
  CopyWith$Query$GetMediaById$Media$startDate<TRes> get startDate;
  CopyWith$Query$GetMediaById$Media$endDate<TRes> get endDate;
  CopyWith$Query$GetMediaById$Media$coverImage<TRes> get coverImage;
  TRes tags(
      Iterable<Query$GetMediaById$Media$tags?>? Function(
              Iterable<
                  CopyWith$Query$GetMediaById$Media$tags<
                      Query$GetMediaById$Media$tags>?>?)
          _fn);
  CopyWith$Query$GetMediaById$Media$studios<TRes> get studios;
  CopyWith$Query$GetMediaById$Media$relations<TRes> get relations;
  CopyWith$Query$GetMediaById$Media$recommendations<TRes> get recommendations;
  CopyWith$Query$GetMediaById$Media$mediaListEntry<TRes> get mediaListEntry;
}

class _CopyWithImpl$Query$GetMediaById$Media<TRes>
    implements CopyWith$Query$GetMediaById$Media<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media _instance;

  final TRes Function(Query$GetMediaById$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? status = _undefined,
    Object? description = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? episodes = _undefined,
    Object? duration = _undefined,
    Object? chapters = _undefined,
    Object? volumes = _undefined,
    Object? source = _undefined,
    Object? coverImage = _undefined,
    Object? genres = _undefined,
    Object? synonyms = _undefined,
    Object? meanScore = _undefined,
    Object? popularity = _undefined,
    Object? favourites = _undefined,
    Object? isLocked = _undefined,
    Object? tags = _undefined,
    Object? studios = _undefined,
    Object? relations = _undefined,
    Object? recommendations = _undefined,
    Object? mediaListEntry = _undefined,
    Object? isFavourite = _undefined,
    Object? isFavouriteBlocked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Query$GetMediaById$Media$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as Query$GetMediaById$Media$startDate?),
        endDate: endDate == _undefined
            ? _instance.endDate
            : (endDate as Query$GetMediaById$Media$endDate?),
        season: season == _undefined
            ? _instance.season
            : (season as Enum$MediaSeason?),
        seasonYear: seasonYear == _undefined
            ? _instance.seasonYear
            : (seasonYear as int?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        duration:
            duration == _undefined ? _instance.duration : (duration as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        volumes: volumes == _undefined ? _instance.volumes : (volumes as int?),
        source: source == _undefined
            ? _instance.source
            : (source as Enum$MediaSource?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$GetMediaById$Media$coverImage?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        synonyms: synonyms == _undefined
            ? _instance.synonyms
            : (synonyms as List<String?>?),
        meanScore:
            meanScore == _undefined ? _instance.meanScore : (meanScore as int?),
        popularity: popularity == _undefined
            ? _instance.popularity
            : (popularity as int?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        tags: tags == _undefined
            ? _instance.tags
            : (tags as List<Query$GetMediaById$Media$tags?>?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as Query$GetMediaById$Media$studios?),
        relations: relations == _undefined
            ? _instance.relations
            : (relations as Query$GetMediaById$Media$relations?),
        recommendations: recommendations == _undefined
            ? _instance.recommendations
            : (recommendations as Query$GetMediaById$Media$recommendations?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry as Query$GetMediaById$Media$mediaListEntry?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        isFavouriteBlocked:
            isFavouriteBlocked == _undefined || isFavouriteBlocked == null
                ? _instance.isFavouriteBlocked
                : (isFavouriteBlocked as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMediaById$Media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$GetMediaById$Media$title.stub(_then(_instance))
        : CopyWith$Query$GetMediaById$Media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$GetMediaById$Media$startDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Query$GetMediaById$Media$startDate.stub(_then(_instance))
        : CopyWith$Query$GetMediaById$Media$startDate(
            local$startDate, (e) => call(startDate: e));
  }

  CopyWith$Query$GetMediaById$Media$endDate<TRes> get endDate {
    final local$endDate = _instance.endDate;
    return local$endDate == null
        ? CopyWith$Query$GetMediaById$Media$endDate.stub(_then(_instance))
        : CopyWith$Query$GetMediaById$Media$endDate(
            local$endDate, (e) => call(endDate: e));
  }

  CopyWith$Query$GetMediaById$Media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$GetMediaById$Media$coverImage.stub(_then(_instance))
        : CopyWith$Query$GetMediaById$Media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  TRes tags(
          Iterable<Query$GetMediaById$Media$tags?>? Function(
                  Iterable<
                      CopyWith$Query$GetMediaById$Media$tags<
                          Query$GetMediaById$Media$tags>?>?)
              _fn) =>
      call(
          tags: _fn(_instance.tags?.map((e) => e == null
              ? null
              : CopyWith$Query$GetMediaById$Media$tags(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GetMediaById$Media$studios<TRes> get studios {
    final local$studios = _instance.studios;
    return local$studios == null
        ? CopyWith$Query$GetMediaById$Media$studios.stub(_then(_instance))
        : CopyWith$Query$GetMediaById$Media$studios(
            local$studios, (e) => call(studios: e));
  }

  CopyWith$Query$GetMediaById$Media$relations<TRes> get relations {
    final local$relations = _instance.relations;
    return local$relations == null
        ? CopyWith$Query$GetMediaById$Media$relations.stub(_then(_instance))
        : CopyWith$Query$GetMediaById$Media$relations(
            local$relations, (e) => call(relations: e));
  }

  CopyWith$Query$GetMediaById$Media$recommendations<TRes> get recommendations {
    final local$recommendations = _instance.recommendations;
    return local$recommendations == null
        ? CopyWith$Query$GetMediaById$Media$recommendations.stub(
            _then(_instance))
        : CopyWith$Query$GetMediaById$Media$recommendations(
            local$recommendations, (e) => call(recommendations: e));
  }

  CopyWith$Query$GetMediaById$Media$mediaListEntry<TRes> get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWith$Query$GetMediaById$Media$mediaListEntry.stub(
            _then(_instance))
        : CopyWith$Query$GetMediaById$Media$mediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaById$Media<TRes>
    implements CopyWith$Query$GetMediaById$Media<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media(this._res);

  TRes _res;

  call({
    int? id,
    Query$GetMediaById$Media$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    Enum$MediaStatus? status,
    String? description,
    Query$GetMediaById$Media$startDate? startDate,
    Query$GetMediaById$Media$endDate? endDate,
    Enum$MediaSeason? season,
    int? seasonYear,
    int? episodes,
    int? duration,
    int? chapters,
    int? volumes,
    Enum$MediaSource? source,
    Query$GetMediaById$Media$coverImage? coverImage,
    List<String?>? genres,
    List<String?>? synonyms,
    int? meanScore,
    int? popularity,
    int? favourites,
    bool? isLocked,
    List<Query$GetMediaById$Media$tags?>? tags,
    Query$GetMediaById$Media$studios? studios,
    Query$GetMediaById$Media$relations? relations,
    Query$GetMediaById$Media$recommendations? recommendations,
    Query$GetMediaById$Media$mediaListEntry? mediaListEntry,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMediaById$Media$title<TRes> get title =>
      CopyWith$Query$GetMediaById$Media$title.stub(_res);

  CopyWith$Query$GetMediaById$Media$startDate<TRes> get startDate =>
      CopyWith$Query$GetMediaById$Media$startDate.stub(_res);

  CopyWith$Query$GetMediaById$Media$endDate<TRes> get endDate =>
      CopyWith$Query$GetMediaById$Media$endDate.stub(_res);

  CopyWith$Query$GetMediaById$Media$coverImage<TRes> get coverImage =>
      CopyWith$Query$GetMediaById$Media$coverImage.stub(_res);

  tags(_fn) => _res;

  CopyWith$Query$GetMediaById$Media$studios<TRes> get studios =>
      CopyWith$Query$GetMediaById$Media$studios.stub(_res);

  CopyWith$Query$GetMediaById$Media$relations<TRes> get relations =>
      CopyWith$Query$GetMediaById$Media$relations.stub(_res);

  CopyWith$Query$GetMediaById$Media$recommendations<TRes> get recommendations =>
      CopyWith$Query$GetMediaById$Media$recommendations.stub(_res);

  CopyWith$Query$GetMediaById$Media$mediaListEntry<TRes> get mediaListEntry =>
      CopyWith$Query$GetMediaById$Media$mediaListEntry.stub(_res);
}

class Query$GetMediaById$Media$title {
  Query$GetMediaById$Media$title({
    this.romaji,
    this.english,
    this.native,
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$GetMediaById$Media$title.fromJson(Map<String, dynamic> json) {
    final l$romaji = json['romaji'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$title(
      romaji: (l$romaji as String?),
      english: (l$english as String?),
      native: (l$native as String?),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? romaji;

  final String? english;

  final String? native;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$english = english;
    _resultData['english'] = l$english;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$romaji = romaji;
    final l$english = english;
    final l$native = native;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$romaji,
      l$english,
      l$native,
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media$title) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
      return false;
    }
    final l$english = english;
    final lOther$english = other.english;
    if (l$english != lOther$english) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
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

extension UtilityExtension$Query$GetMediaById$Media$title
    on Query$GetMediaById$Media$title {
  CopyWith$Query$GetMediaById$Media$title<Query$GetMediaById$Media$title>
      get copyWith => CopyWith$Query$GetMediaById$Media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$title<TRes> {
  factory CopyWith$Query$GetMediaById$Media$title(
    Query$GetMediaById$Media$title instance,
    TRes Function(Query$GetMediaById$Media$title) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$title;

  factory CopyWith$Query$GetMediaById$Media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$title;

  TRes call({
    String? romaji,
    String? english,
    String? native,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$title<TRes>
    implements CopyWith$Query$GetMediaById$Media$title<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$title(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$title _instance;

  final TRes Function(Query$GetMediaById$Media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? romaji = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$title(
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        english:
            english == _undefined ? _instance.english : (english as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$title<TRes>
    implements CopyWith$Query$GetMediaById$Media$title<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$title(this._res);

  TRes _res;

  call({
    String? romaji,
    String? english,
    String? native,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMediaById$Media$startDate {
  Query$GetMediaById$Media$startDate({
    this.day,
    this.month,
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$GetMediaById$Media$startDate.fromJson(
      Map<String, dynamic> json) {
    final l$day = json['day'];
    final l$month = json['month'];
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$startDate(
      day: (l$day as int?),
      month: (l$month as int?),
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? day;

  final int? month;

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$day = day;
    _resultData['day'] = l$day;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$month = month;
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$day,
      l$month,
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media$startDate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
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

extension UtilityExtension$Query$GetMediaById$Media$startDate
    on Query$GetMediaById$Media$startDate {
  CopyWith$Query$GetMediaById$Media$startDate<
          Query$GetMediaById$Media$startDate>
      get copyWith => CopyWith$Query$GetMediaById$Media$startDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$startDate<TRes> {
  factory CopyWith$Query$GetMediaById$Media$startDate(
    Query$GetMediaById$Media$startDate instance,
    TRes Function(Query$GetMediaById$Media$startDate) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$startDate;

  factory CopyWith$Query$GetMediaById$Media$startDate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$startDate;

  TRes call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$startDate<TRes>
    implements CopyWith$Query$GetMediaById$Media$startDate<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$startDate(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$startDate _instance;

  final TRes Function(Query$GetMediaById$Media$startDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? month = _undefined,
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$startDate(
        day: day == _undefined ? _instance.day : (day as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$startDate<TRes>
    implements CopyWith$Query$GetMediaById$Media$startDate<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$startDate(this._res);

  TRes _res;

  call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMediaById$Media$endDate {
  Query$GetMediaById$Media$endDate({
    this.day,
    this.month,
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$GetMediaById$Media$endDate.fromJson(Map<String, dynamic> json) {
    final l$day = json['day'];
    final l$month = json['month'];
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$endDate(
      day: (l$day as int?),
      month: (l$month as int?),
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? day;

  final int? month;

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$day = day;
    _resultData['day'] = l$day;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$month = month;
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$day,
      l$month,
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media$endDate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
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

extension UtilityExtension$Query$GetMediaById$Media$endDate
    on Query$GetMediaById$Media$endDate {
  CopyWith$Query$GetMediaById$Media$endDate<Query$GetMediaById$Media$endDate>
      get copyWith => CopyWith$Query$GetMediaById$Media$endDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$endDate<TRes> {
  factory CopyWith$Query$GetMediaById$Media$endDate(
    Query$GetMediaById$Media$endDate instance,
    TRes Function(Query$GetMediaById$Media$endDate) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$endDate;

  factory CopyWith$Query$GetMediaById$Media$endDate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$endDate;

  TRes call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$endDate<TRes>
    implements CopyWith$Query$GetMediaById$Media$endDate<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$endDate(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$endDate _instance;

  final TRes Function(Query$GetMediaById$Media$endDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? month = _undefined,
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$endDate(
        day: day == _undefined ? _instance.day : (day as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$endDate<TRes>
    implements CopyWith$Query$GetMediaById$Media$endDate<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$endDate(this._res);

  TRes _res;

  call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMediaById$Media$coverImage {
  Query$GetMediaById$Media$coverImage({
    this.large,
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$GetMediaById$Media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$coverImage(
      large: (l$large as String?),
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String? extraLarge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$extraLarge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
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

extension UtilityExtension$Query$GetMediaById$Media$coverImage
    on Query$GetMediaById$Media$coverImage {
  CopyWith$Query$GetMediaById$Media$coverImage<
          Query$GetMediaById$Media$coverImage>
      get copyWith => CopyWith$Query$GetMediaById$Media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$coverImage<TRes> {
  factory CopyWith$Query$GetMediaById$Media$coverImage(
    Query$GetMediaById$Media$coverImage instance,
    TRes Function(Query$GetMediaById$Media$coverImage) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$coverImage;

  factory CopyWith$Query$GetMediaById$Media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$coverImage;

  TRes call({
    String? large,
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$coverImage<TRes>
    implements CopyWith$Query$GetMediaById$Media$coverImage<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$coverImage(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$coverImage _instance;

  final TRes Function(Query$GetMediaById$Media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$coverImage<TRes>
    implements CopyWith$Query$GetMediaById$Media$coverImage<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMediaById$Media$tags {
  Query$GetMediaById$Media$tags({
    required this.name,
    this.rank,
    this.isMediaSpoiler,
    this.isGeneralSpoiler,
    this.$__typename = 'MediaTag',
  });

  factory Query$GetMediaById$Media$tags.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$rank = json['rank'];
    final l$isMediaSpoiler = json['isMediaSpoiler'];
    final l$isGeneralSpoiler = json['isGeneralSpoiler'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$tags(
      name: (l$name as String),
      rank: (l$rank as int?),
      isMediaSpoiler: (l$isMediaSpoiler as bool?),
      isGeneralSpoiler: (l$isGeneralSpoiler as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int? rank;

  final bool? isMediaSpoiler;

  final bool? isGeneralSpoiler;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$rank = rank;
    _resultData['rank'] = l$rank;
    final l$isMediaSpoiler = isMediaSpoiler;
    _resultData['isMediaSpoiler'] = l$isMediaSpoiler;
    final l$isGeneralSpoiler = isGeneralSpoiler;
    _resultData['isGeneralSpoiler'] = l$isGeneralSpoiler;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$rank = rank;
    final l$isMediaSpoiler = isMediaSpoiler;
    final l$isGeneralSpoiler = isGeneralSpoiler;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$rank,
      l$isMediaSpoiler,
      l$isGeneralSpoiler,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media$tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$rank = rank;
    final lOther$rank = other.rank;
    if (l$rank != lOther$rank) {
      return false;
    }
    final l$isMediaSpoiler = isMediaSpoiler;
    final lOther$isMediaSpoiler = other.isMediaSpoiler;
    if (l$isMediaSpoiler != lOther$isMediaSpoiler) {
      return false;
    }
    final l$isGeneralSpoiler = isGeneralSpoiler;
    final lOther$isGeneralSpoiler = other.isGeneralSpoiler;
    if (l$isGeneralSpoiler != lOther$isGeneralSpoiler) {
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

extension UtilityExtension$Query$GetMediaById$Media$tags
    on Query$GetMediaById$Media$tags {
  CopyWith$Query$GetMediaById$Media$tags<Query$GetMediaById$Media$tags>
      get copyWith => CopyWith$Query$GetMediaById$Media$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$tags<TRes> {
  factory CopyWith$Query$GetMediaById$Media$tags(
    Query$GetMediaById$Media$tags instance,
    TRes Function(Query$GetMediaById$Media$tags) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$tags;

  factory CopyWith$Query$GetMediaById$Media$tags.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$tags;

  TRes call({
    String? name,
    int? rank,
    bool? isMediaSpoiler,
    bool? isGeneralSpoiler,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$tags<TRes>
    implements CopyWith$Query$GetMediaById$Media$tags<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$tags(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$tags _instance;

  final TRes Function(Query$GetMediaById$Media$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? rank = _undefined,
    Object? isMediaSpoiler = _undefined,
    Object? isGeneralSpoiler = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$tags(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        rank: rank == _undefined ? _instance.rank : (rank as int?),
        isMediaSpoiler: isMediaSpoiler == _undefined
            ? _instance.isMediaSpoiler
            : (isMediaSpoiler as bool?),
        isGeneralSpoiler: isGeneralSpoiler == _undefined
            ? _instance.isGeneralSpoiler
            : (isGeneralSpoiler as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$tags<TRes>
    implements CopyWith$Query$GetMediaById$Media$tags<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$tags(this._res);

  TRes _res;

  call({
    String? name,
    int? rank,
    bool? isMediaSpoiler,
    bool? isGeneralSpoiler,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMediaById$Media$studios {
  Query$GetMediaById$Media$studios({
    this.edges,
    this.$__typename = 'StudioConnection',
  });

  factory Query$GetMediaById$Media$studios.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$studios(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetMediaById$Media$studios$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetMediaById$Media$studios$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media$studios) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$GetMediaById$Media$studios
    on Query$GetMediaById$Media$studios {
  CopyWith$Query$GetMediaById$Media$studios<Query$GetMediaById$Media$studios>
      get copyWith => CopyWith$Query$GetMediaById$Media$studios(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$studios<TRes> {
  factory CopyWith$Query$GetMediaById$Media$studios(
    Query$GetMediaById$Media$studios instance,
    TRes Function(Query$GetMediaById$Media$studios) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$studios;

  factory CopyWith$Query$GetMediaById$Media$studios.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$studios;

  TRes call({
    List<Query$GetMediaById$Media$studios$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$GetMediaById$Media$studios$edges?>? Function(
              Iterable<
                  CopyWith$Query$GetMediaById$Media$studios$edges<
                      Query$GetMediaById$Media$studios$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetMediaById$Media$studios<TRes>
    implements CopyWith$Query$GetMediaById$Media$studios<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$studios(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$studios _instance;

  final TRes Function(Query$GetMediaById$Media$studios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$studios(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$GetMediaById$Media$studios$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$GetMediaById$Media$studios$edges?>? Function(
                  Iterable<
                      CopyWith$Query$GetMediaById$Media$studios$edges<
                          Query$GetMediaById$Media$studios$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$GetMediaById$Media$studios$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetMediaById$Media$studios<TRes>
    implements CopyWith$Query$GetMediaById$Media$studios<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$studios(this._res);

  TRes _res;

  call({
    List<Query$GetMediaById$Media$studios$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$GetMediaById$Media$studios$edges {
  Query$GetMediaById$Media$studios$edges({
    required this.isMain,
    this.node,
    this.$__typename = 'StudioEdge',
  });

  factory Query$GetMediaById$Media$studios$edges.fromJson(
      Map<String, dynamic> json) {
    final l$isMain = json['isMain'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$studios$edges(
      isMain: (l$isMain as bool),
      node: l$node == null
          ? null
          : Query$GetMediaById$Media$studios$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isMain;

  final Query$GetMediaById$Media$studios$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isMain = isMain;
    _resultData['isMain'] = l$isMain;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isMain = isMain;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isMain,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media$studios$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isMain = isMain;
    final lOther$isMain = other.isMain;
    if (l$isMain != lOther$isMain) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$GetMediaById$Media$studios$edges
    on Query$GetMediaById$Media$studios$edges {
  CopyWith$Query$GetMediaById$Media$studios$edges<
          Query$GetMediaById$Media$studios$edges>
      get copyWith => CopyWith$Query$GetMediaById$Media$studios$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$studios$edges<TRes> {
  factory CopyWith$Query$GetMediaById$Media$studios$edges(
    Query$GetMediaById$Media$studios$edges instance,
    TRes Function(Query$GetMediaById$Media$studios$edges) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$studios$edges;

  factory CopyWith$Query$GetMediaById$Media$studios$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$studios$edges;

  TRes call({
    bool? isMain,
    Query$GetMediaById$Media$studios$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$GetMediaById$Media$studios$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetMediaById$Media$studios$edges<TRes>
    implements CopyWith$Query$GetMediaById$Media$studios$edges<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$studios$edges(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$studios$edges _instance;

  final TRes Function(Query$GetMediaById$Media$studios$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isMain = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$studios$edges(
        isMain: isMain == _undefined || isMain == null
            ? _instance.isMain
            : (isMain as bool),
        node: node == _undefined
            ? _instance.node
            : (node as Query$GetMediaById$Media$studios$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMediaById$Media$studios$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$GetMediaById$Media$studios$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$GetMediaById$Media$studios$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaById$Media$studios$edges<TRes>
    implements CopyWith$Query$GetMediaById$Media$studios$edges<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$studios$edges(this._res);

  TRes _res;

  call({
    bool? isMain,
    Query$GetMediaById$Media$studios$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMediaById$Media$studios$edges$node<TRes> get node =>
      CopyWith$Query$GetMediaById$Media$studios$edges$node.stub(_res);
}

class Query$GetMediaById$Media$studios$edges$node {
  Query$GetMediaById$Media$studios$edges$node({
    required this.id,
    required this.name,
    this.$__typename = 'Studio',
  });

  factory Query$GetMediaById$Media$studios$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$studios$edges$node(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$GetMediaById$Media$studios$edges$node) ||
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

extension UtilityExtension$Query$GetMediaById$Media$studios$edges$node
    on Query$GetMediaById$Media$studios$edges$node {
  CopyWith$Query$GetMediaById$Media$studios$edges$node<
          Query$GetMediaById$Media$studios$edges$node>
      get copyWith => CopyWith$Query$GetMediaById$Media$studios$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$studios$edges$node<TRes> {
  factory CopyWith$Query$GetMediaById$Media$studios$edges$node(
    Query$GetMediaById$Media$studios$edges$node instance,
    TRes Function(Query$GetMediaById$Media$studios$edges$node) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$studios$edges$node;

  factory CopyWith$Query$GetMediaById$Media$studios$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$studios$edges$node;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$studios$edges$node<TRes>
    implements CopyWith$Query$GetMediaById$Media$studios$edges$node<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$studios$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$studios$edges$node _instance;

  final TRes Function(Query$GetMediaById$Media$studios$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$studios$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$studios$edges$node<TRes>
    implements CopyWith$Query$GetMediaById$Media$studios$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$studios$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMediaById$Media$relations {
  Query$GetMediaById$Media$relations({
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$GetMediaById$Media$relations.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$relations(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetMediaById$Media$relations$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetMediaById$Media$relations$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media$relations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$GetMediaById$Media$relations
    on Query$GetMediaById$Media$relations {
  CopyWith$Query$GetMediaById$Media$relations<
          Query$GetMediaById$Media$relations>
      get copyWith => CopyWith$Query$GetMediaById$Media$relations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$relations<TRes> {
  factory CopyWith$Query$GetMediaById$Media$relations(
    Query$GetMediaById$Media$relations instance,
    TRes Function(Query$GetMediaById$Media$relations) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$relations;

  factory CopyWith$Query$GetMediaById$Media$relations.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$relations;

  TRes call({
    List<Query$GetMediaById$Media$relations$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$GetMediaById$Media$relations$edges?>? Function(
              Iterable<
                  CopyWith$Query$GetMediaById$Media$relations$edges<
                      Query$GetMediaById$Media$relations$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetMediaById$Media$relations<TRes>
    implements CopyWith$Query$GetMediaById$Media$relations<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$relations(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$relations _instance;

  final TRes Function(Query$GetMediaById$Media$relations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$relations(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$GetMediaById$Media$relations$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$GetMediaById$Media$relations$edges?>? Function(
                  Iterable<
                      CopyWith$Query$GetMediaById$Media$relations$edges<
                          Query$GetMediaById$Media$relations$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$GetMediaById$Media$relations$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetMediaById$Media$relations<TRes>
    implements CopyWith$Query$GetMediaById$Media$relations<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$relations(this._res);

  TRes _res;

  call({
    List<Query$GetMediaById$Media$relations$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$GetMediaById$Media$relations$edges {
  Query$GetMediaById$Media$relations$edges({
    this.relationType,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$GetMediaById$Media$relations$edges.fromJson(
      Map<String, dynamic> json) {
    final l$relationType = json['relationType'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$relations$edges(
      relationType: l$relationType == null
          ? null
          : fromJson$Enum$MediaRelation((l$relationType as String)),
      node: l$node == null
          ? null
          : Query$GetMediaById$Media$relations$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaRelation? relationType;

  final Query$GetMediaById$Media$relations$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$relationType = relationType;
    _resultData['relationType'] = l$relationType == null
        ? null
        : toJson$Enum$MediaRelation(l$relationType);
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$relationType = relationType;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$relationType,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media$relations$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$relationType = relationType;
    final lOther$relationType = other.relationType;
    if (l$relationType != lOther$relationType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$GetMediaById$Media$relations$edges
    on Query$GetMediaById$Media$relations$edges {
  CopyWith$Query$GetMediaById$Media$relations$edges<
          Query$GetMediaById$Media$relations$edges>
      get copyWith => CopyWith$Query$GetMediaById$Media$relations$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$relations$edges<TRes> {
  factory CopyWith$Query$GetMediaById$Media$relations$edges(
    Query$GetMediaById$Media$relations$edges instance,
    TRes Function(Query$GetMediaById$Media$relations$edges) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$relations$edges;

  factory CopyWith$Query$GetMediaById$Media$relations$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges;

  TRes call({
    Enum$MediaRelation? relationType,
    Query$GetMediaById$Media$relations$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$GetMediaById$Media$relations$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetMediaById$Media$relations$edges<TRes>
    implements CopyWith$Query$GetMediaById$Media$relations$edges<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$relations$edges(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$relations$edges _instance;

  final TRes Function(Query$GetMediaById$Media$relations$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? relationType = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$relations$edges(
        relationType: relationType == _undefined
            ? _instance.relationType
            : (relationType as Enum$MediaRelation?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$GetMediaById$Media$relations$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMediaById$Media$relations$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$GetMediaById$Media$relations$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$GetMediaById$Media$relations$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges<TRes>
    implements CopyWith$Query$GetMediaById$Media$relations$edges<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges(this._res);

  TRes _res;

  call({
    Enum$MediaRelation? relationType,
    Query$GetMediaById$Media$relations$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMediaById$Media$relations$edges$node<TRes> get node =>
      CopyWith$Query$GetMediaById$Media$relations$edges$node.stub(_res);
}

class Query$GetMediaById$Media$relations$edges$node {
  Query$GetMediaById$Media$relations$edges$node({
    required this.id,
    this.title,
    this.type,
    this.format,
    this.status,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Query$GetMediaById$Media$relations$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$status = json['status'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$relations$edges$node(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$GetMediaById$Media$relations$edges$node$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      coverImage: l$coverImage == null
          ? null
          : Query$GetMediaById$Media$relations$edges$node$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetMediaById$Media$relations$edges$node$title? title;

  final Enum$MediaType? type;

  final Enum$MediaFormat? format;

  final Enum$MediaStatus? status;

  final Query$GetMediaById$Media$relations$edges$node$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
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
    final l$type = type;
    final l$format = format;
    final l$status = status;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$format,
      l$status,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media$relations$edges$node) ||
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
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Query$GetMediaById$Media$relations$edges$node
    on Query$GetMediaById$Media$relations$edges$node {
  CopyWith$Query$GetMediaById$Media$relations$edges$node<
          Query$GetMediaById$Media$relations$edges$node>
      get copyWith => CopyWith$Query$GetMediaById$Media$relations$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$relations$edges$node<TRes> {
  factory CopyWith$Query$GetMediaById$Media$relations$edges$node(
    Query$GetMediaById$Media$relations$edges$node instance,
    TRes Function(Query$GetMediaById$Media$relations$edges$node) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$relations$edges$node;

  factory CopyWith$Query$GetMediaById$Media$relations$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges$node;

  TRes call({
    int? id,
    Query$GetMediaById$Media$relations$edges$node$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    Enum$MediaStatus? status,
    Query$GetMediaById$Media$relations$edges$node$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Query$GetMediaById$Media$relations$edges$node$title<TRes> get title;
  CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage<TRes>
      get coverImage;
}

class _CopyWithImpl$Query$GetMediaById$Media$relations$edges$node<TRes>
    implements CopyWith$Query$GetMediaById$Media$relations$edges$node<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$relations$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$relations$edges$node _instance;

  final TRes Function(Query$GetMediaById$Media$relations$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? status = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$relations$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Query$GetMediaById$Media$relations$edges$node$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$GetMediaById$Media$relations$edges$node$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMediaById$Media$relations$edges$node$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$GetMediaById$Media$relations$edges$node$title.stub(
            _then(_instance))
        : CopyWith$Query$GetMediaById$Media$relations$edges$node$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage
            .stub(_then(_instance))
        : CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges$node<TRes>
    implements CopyWith$Query$GetMediaById$Media$relations$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    Query$GetMediaById$Media$relations$edges$node$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    Enum$MediaStatus? status,
    Query$GetMediaById$Media$relations$edges$node$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMediaById$Media$relations$edges$node$title<TRes>
      get title =>
          CopyWith$Query$GetMediaById$Media$relations$edges$node$title.stub(
              _res);

  CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage<TRes>
      get coverImage =>
          CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage
              .stub(_res);
}

class Query$GetMediaById$Media$relations$edges$node$title {
  Query$GetMediaById$Media$relations$edges$node$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$GetMediaById$Media$relations$edges$node$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$relations$edges$node$title(
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
    if (!(other is Query$GetMediaById$Media$relations$edges$node$title) ||
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

extension UtilityExtension$Query$GetMediaById$Media$relations$edges$node$title
    on Query$GetMediaById$Media$relations$edges$node$title {
  CopyWith$Query$GetMediaById$Media$relations$edges$node$title<
          Query$GetMediaById$Media$relations$edges$node$title>
      get copyWith =>
          CopyWith$Query$GetMediaById$Media$relations$edges$node$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$relations$edges$node$title<
    TRes> {
  factory CopyWith$Query$GetMediaById$Media$relations$edges$node$title(
    Query$GetMediaById$Media$relations$edges$node$title instance,
    TRes Function(Query$GetMediaById$Media$relations$edges$node$title) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$relations$edges$node$title;

  factory CopyWith$Query$GetMediaById$Media$relations$edges$node$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges$node$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$relations$edges$node$title<TRes>
    implements
        CopyWith$Query$GetMediaById$Media$relations$edges$node$title<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$relations$edges$node$title(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$relations$edges$node$title _instance;

  final TRes Function(Query$GetMediaById$Media$relations$edges$node$title)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$relations$edges$node$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges$node$title<
        TRes>
    implements
        CopyWith$Query$GetMediaById$Media$relations$edges$node$title<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges$node$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMediaById$Media$relations$edges$node$coverImage {
  Query$GetMediaById$Media$relations$edges$node$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$GetMediaById$Media$relations$edges$node$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$relations$edges$node$coverImage(
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
    if (!(other is Query$GetMediaById$Media$relations$edges$node$coverImage) ||
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

extension UtilityExtension$Query$GetMediaById$Media$relations$edges$node$coverImage
    on Query$GetMediaById$Media$relations$edges$node$coverImage {
  CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage<
          Query$GetMediaById$Media$relations$edges$node$coverImage>
      get copyWith =>
          CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage<
    TRes> {
  factory CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage(
    Query$GetMediaById$Media$relations$edges$node$coverImage instance,
    TRes Function(Query$GetMediaById$Media$relations$edges$node$coverImage)
        then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$relations$edges$node$coverImage;

  factory CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges$node$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$relations$edges$node$coverImage<
        TRes>
    implements
        CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage<
            TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$relations$edges$node$coverImage(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$relations$edges$node$coverImage _instance;

  final TRes Function(Query$GetMediaById$Media$relations$edges$node$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$relations$edges$node$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges$node$coverImage<
        TRes>
    implements
        CopyWith$Query$GetMediaById$Media$relations$edges$node$coverImage<
            TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$relations$edges$node$coverImage(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMediaById$Media$recommendations {
  Query$GetMediaById$Media$recommendations({
    this.nodes,
    this.$__typename = 'RecommendationConnection',
  });

  factory Query$GetMediaById$Media$recommendations.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$recommendations(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetMediaById$Media$recommendations$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetMediaById$Media$recommendations$nodes?>? nodes;

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
    if (!(other is Query$GetMediaById$Media$recommendations) ||
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

extension UtilityExtension$Query$GetMediaById$Media$recommendations
    on Query$GetMediaById$Media$recommendations {
  CopyWith$Query$GetMediaById$Media$recommendations<
          Query$GetMediaById$Media$recommendations>
      get copyWith => CopyWith$Query$GetMediaById$Media$recommendations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$recommendations<TRes> {
  factory CopyWith$Query$GetMediaById$Media$recommendations(
    Query$GetMediaById$Media$recommendations instance,
    TRes Function(Query$GetMediaById$Media$recommendations) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$recommendations;

  factory CopyWith$Query$GetMediaById$Media$recommendations.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$recommendations;

  TRes call({
    List<Query$GetMediaById$Media$recommendations$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetMediaById$Media$recommendations$nodes?>? Function(
              Iterable<
                  CopyWith$Query$GetMediaById$Media$recommendations$nodes<
                      Query$GetMediaById$Media$recommendations$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetMediaById$Media$recommendations<TRes>
    implements CopyWith$Query$GetMediaById$Media$recommendations<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$recommendations(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$recommendations _instance;

  final TRes Function(Query$GetMediaById$Media$recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$recommendations(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetMediaById$Media$recommendations$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetMediaById$Media$recommendations$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$GetMediaById$Media$recommendations$nodes<
                          Query$GetMediaById$Media$recommendations$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$GetMediaById$Media$recommendations$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetMediaById$Media$recommendations<TRes>
    implements CopyWith$Query$GetMediaById$Media$recommendations<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$recommendations(this._res);

  TRes _res;

  call({
    List<Query$GetMediaById$Media$recommendations$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$GetMediaById$Media$recommendations$nodes {
  Query$GetMediaById$Media$recommendations$nodes({
    this.rating,
    this.mediaRecommendation,
    this.$__typename = 'Recommendation',
  });

  factory Query$GetMediaById$Media$recommendations$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$rating = json['rating'];
    final l$mediaRecommendation = json['mediaRecommendation'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$recommendations$nodes(
      rating: (l$rating as int?),
      mediaRecommendation: l$mediaRecommendation == null
          ? null
          : Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation
              .fromJson((l$mediaRecommendation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? rating;

  final Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation?
      mediaRecommendation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$mediaRecommendation = mediaRecommendation;
    _resultData['mediaRecommendation'] = l$mediaRecommendation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rating = rating;
    final l$mediaRecommendation = mediaRecommendation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rating,
      l$mediaRecommendation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaById$Media$recommendations$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$mediaRecommendation = mediaRecommendation;
    final lOther$mediaRecommendation = other.mediaRecommendation;
    if (l$mediaRecommendation != lOther$mediaRecommendation) {
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

extension UtilityExtension$Query$GetMediaById$Media$recommendations$nodes
    on Query$GetMediaById$Media$recommendations$nodes {
  CopyWith$Query$GetMediaById$Media$recommendations$nodes<
          Query$GetMediaById$Media$recommendations$nodes>
      get copyWith => CopyWith$Query$GetMediaById$Media$recommendations$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$recommendations$nodes<TRes> {
  factory CopyWith$Query$GetMediaById$Media$recommendations$nodes(
    Query$GetMediaById$Media$recommendations$nodes instance,
    TRes Function(Query$GetMediaById$Media$recommendations$nodes) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes;

  factory CopyWith$Query$GetMediaById$Media$recommendations$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes;

  TRes call({
    int? rating,
    Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation?
        mediaRecommendation,
    String? $__typename,
  });
  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation<
      TRes> get mediaRecommendation;
}

class _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes<TRes>
    implements CopyWith$Query$GetMediaById$Media$recommendations$nodes<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$recommendations$nodes _instance;

  final TRes Function(Query$GetMediaById$Media$recommendations$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rating = _undefined,
    Object? mediaRecommendation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$recommendations$nodes(
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        mediaRecommendation: mediaRecommendation == _undefined
            ? _instance.mediaRecommendation
            : (mediaRecommendation
                as Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation<
      TRes> get mediaRecommendation {
    final local$mediaRecommendation = _instance.mediaRecommendation;
    return local$mediaRecommendation == null
        ? CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation
            .stub(_then(_instance))
        : CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation(
            local$mediaRecommendation, (e) => call(mediaRecommendation: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes<TRes>
    implements CopyWith$Query$GetMediaById$Media$recommendations$nodes<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes(this._res);

  TRes _res;

  call({
    int? rating,
    Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation?
        mediaRecommendation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation<
          TRes>
      get mediaRecommendation =>
          CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation
              .stub(_res);
}

class Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation {
  Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation({
    required this.id,
    this.title,
    this.coverImage,
    this.format,
    this.type,
    this.status,
    this.$__typename = 'Media',
  });

  factory Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$format = json['format'];
    final l$type = json['type'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title
              .fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title?
      title;

  final Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage?
      coverImage;

  final Enum$MediaFormat? format;

  final Enum$MediaType? type;

  final Enum$MediaStatus? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$format = format;
    final l$type = type;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$coverImage,
      l$format,
      l$type,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation) ||
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
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation
    on Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation {
  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation<
          Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation>
      get copyWith =>
          CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation<
    TRes> {
  factory CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation(
    Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation instance,
    TRes Function(
            Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation)
        then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation;

  factory CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation;

  TRes call({
    int? id,
    Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title?
        title,
    Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage?
        coverImage,
    Enum$MediaFormat? format,
    Enum$MediaType? type,
    Enum$MediaStatus? status,
    String? $__typename,
  });
  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title<
      TRes> get title;
  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage<
      TRes> get coverImage;
}

class _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation<
        TRes>
    implements
        CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation<
            TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation
      _instance;

  final TRes Function(
      Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? format = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title
                as Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title<
      TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title
            .stub(_then(_instance))
        : CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage
            .stub(_then(_instance))
        : CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation<
        TRes>
    implements
        CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation<
            TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title?
        title,
    Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage?
        coverImage,
    Enum$MediaFormat? format,
    Enum$MediaType? type,
    Enum$MediaStatus? status,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title<
          TRes>
      get title =>
          CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title
              .stub(_res);

  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage<
          TRes>
      get coverImage =>
          CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage
              .stub(_res);
}

class Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title {
  Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title(
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
    if (!(other
            is Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title) ||
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

extension UtilityExtension$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title
    on Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title {
  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title<
          Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title>
      get copyWith =>
          CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title<
    TRes> {
  factory CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title(
    Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title
        instance,
    TRes Function(
            Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title)
        then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title;

  factory CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title<
        TRes>
    implements
        CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title<
            TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title
      _instance;

  final TRes Function(
          Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title<
        TRes>
    implements
        CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title<
            TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage {
  Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage(
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
    if (!(other
            is Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage) ||
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

extension UtilityExtension$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage
    on Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage {
  CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage<
          Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage>
      get copyWith =>
          CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage<
    TRes> {
  factory CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage(
    Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage
        instance,
    TRes Function(
            Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage)
        then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage;

  factory CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage<
        TRes>
    implements
        CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage<
            TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage
      _instance;

  final TRes Function(
          Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage<
        TRes>
    implements
        CopyWith$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage<
            TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$recommendations$nodes$mediaRecommendation$coverImage(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMediaById$Media$mediaListEntry {
  Query$GetMediaById$Media$mediaListEntry({
    this.status,
    this.score,
    this.notes,
    this.progress,
    this.progressVolumes,
    this.startedAt,
    this.completedAt,
    this.$__typename = 'MediaList',
  });

  factory Query$GetMediaById$Media$mediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$score = json['score'];
    final l$notes = json['notes'];
    final l$progress = json['progress'];
    final l$progressVolumes = json['progressVolumes'];
    final l$startedAt = json['startedAt'];
    final l$completedAt = json['completedAt'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$mediaListEntry(
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      score: (l$score as num?)?.toDouble(),
      notes: (l$notes as String?),
      progress: (l$progress as int?),
      progressVolumes: (l$progressVolumes as int?),
      startedAt: l$startedAt == null
          ? null
          : Query$GetMediaById$Media$mediaListEntry$startedAt.fromJson(
              (l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : Query$GetMediaById$Media$mediaListEntry$completedAt.fromJson(
              (l$completedAt as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaListStatus? status;

  final double? score;

  final String? notes;

  final int? progress;

  final int? progressVolumes;

  final Query$GetMediaById$Media$mediaListEntry$startedAt? startedAt;

  final Query$GetMediaById$Media$mediaListEntry$completedAt? completedAt;

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
    if (!(other is Query$GetMediaById$Media$mediaListEntry) ||
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

extension UtilityExtension$Query$GetMediaById$Media$mediaListEntry
    on Query$GetMediaById$Media$mediaListEntry {
  CopyWith$Query$GetMediaById$Media$mediaListEntry<
          Query$GetMediaById$Media$mediaListEntry>
      get copyWith => CopyWith$Query$GetMediaById$Media$mediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$mediaListEntry<TRes> {
  factory CopyWith$Query$GetMediaById$Media$mediaListEntry(
    Query$GetMediaById$Media$mediaListEntry instance,
    TRes Function(Query$GetMediaById$Media$mediaListEntry) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$mediaListEntry;

  factory CopyWith$Query$GetMediaById$Media$mediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$mediaListEntry;

  TRes call({
    Enum$MediaListStatus? status,
    double? score,
    String? notes,
    int? progress,
    int? progressVolumes,
    Query$GetMediaById$Media$mediaListEntry$startedAt? startedAt,
    Query$GetMediaById$Media$mediaListEntry$completedAt? completedAt,
    String? $__typename,
  });
  CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt<TRes>
      get startedAt;
  CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt<TRes>
      get completedAt;
}

class _CopyWithImpl$Query$GetMediaById$Media$mediaListEntry<TRes>
    implements CopyWith$Query$GetMediaById$Media$mediaListEntry<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$mediaListEntry(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$mediaListEntry _instance;

  final TRes Function(Query$GetMediaById$Media$mediaListEntry) _then;

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
      _then(Query$GetMediaById$Media$mediaListEntry(
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
            : (startedAt as Query$GetMediaById$Media$mediaListEntry$startedAt?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt
                as Query$GetMediaById$Media$mediaListEntry$completedAt?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt<TRes>
      get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt.stub(
            _then(_instance))
        : CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt(
            local$startedAt, (e) => call(startedAt: e));
  }

  CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt<TRes>
      get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt.stub(
            _then(_instance))
        : CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt(
            local$completedAt, (e) => call(completedAt: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaById$Media$mediaListEntry<TRes>
    implements CopyWith$Query$GetMediaById$Media$mediaListEntry<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$mediaListEntry(this._res);

  TRes _res;

  call({
    Enum$MediaListStatus? status,
    double? score,
    String? notes,
    int? progress,
    int? progressVolumes,
    Query$GetMediaById$Media$mediaListEntry$startedAt? startedAt,
    Query$GetMediaById$Media$mediaListEntry$completedAt? completedAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt<TRes>
      get startedAt =>
          CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt.stub(_res);

  CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt<TRes>
      get completedAt =>
          CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt.stub(
              _res);
}

class Query$GetMediaById$Media$mediaListEntry$startedAt {
  Query$GetMediaById$Media$mediaListEntry$startedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$GetMediaById$Media$mediaListEntry$startedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$mediaListEntry$startedAt(
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
    if (!(other is Query$GetMediaById$Media$mediaListEntry$startedAt) ||
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

extension UtilityExtension$Query$GetMediaById$Media$mediaListEntry$startedAt
    on Query$GetMediaById$Media$mediaListEntry$startedAt {
  CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt<
          Query$GetMediaById$Media$mediaListEntry$startedAt>
      get copyWith =>
          CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt<
    TRes> {
  factory CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt(
    Query$GetMediaById$Media$mediaListEntry$startedAt instance,
    TRes Function(Query$GetMediaById$Media$mediaListEntry$startedAt) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$mediaListEntry$startedAt;

  factory CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$mediaListEntry$startedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$mediaListEntry$startedAt<TRes>
    implements
        CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$mediaListEntry$startedAt(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$mediaListEntry$startedAt _instance;

  final TRes Function(Query$GetMediaById$Media$mediaListEntry$startedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$mediaListEntry$startedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$mediaListEntry$startedAt<TRes>
    implements
        CopyWith$Query$GetMediaById$Media$mediaListEntry$startedAt<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$mediaListEntry$startedAt(
      this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMediaById$Media$mediaListEntry$completedAt {
  Query$GetMediaById$Media$mediaListEntry$completedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$GetMediaById$Media$mediaListEntry$completedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaById$Media$mediaListEntry$completedAt(
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
    if (!(other is Query$GetMediaById$Media$mediaListEntry$completedAt) ||
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

extension UtilityExtension$Query$GetMediaById$Media$mediaListEntry$completedAt
    on Query$GetMediaById$Media$mediaListEntry$completedAt {
  CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt<
          Query$GetMediaById$Media$mediaListEntry$completedAt>
      get copyWith =>
          CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt<
    TRes> {
  factory CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt(
    Query$GetMediaById$Media$mediaListEntry$completedAt instance,
    TRes Function(Query$GetMediaById$Media$mediaListEntry$completedAt) then,
  ) = _CopyWithImpl$Query$GetMediaById$Media$mediaListEntry$completedAt;

  factory CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMediaById$Media$mediaListEntry$completedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMediaById$Media$mediaListEntry$completedAt<TRes>
    implements
        CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt<TRes> {
  _CopyWithImpl$Query$GetMediaById$Media$mediaListEntry$completedAt(
    this._instance,
    this._then,
  );

  final Query$GetMediaById$Media$mediaListEntry$completedAt _instance;

  final TRes Function(Query$GetMediaById$Media$mediaListEntry$completedAt)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaById$Media$mediaListEntry$completedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMediaById$Media$mediaListEntry$completedAt<
        TRes>
    implements
        CopyWith$Query$GetMediaById$Media$mediaListEntry$completedAt<TRes> {
  _CopyWithStubImpl$Query$GetMediaById$Media$mediaListEntry$completedAt(
      this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}
