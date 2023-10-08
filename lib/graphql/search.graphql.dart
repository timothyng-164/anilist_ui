import 'package:gql/ast.dart';

class Variables$Query$SearchAnime {
  factory Variables$Query$SearchAnime({
    int? page,
    int? perPage,
    String? search,
  }) =>
      Variables$Query$SearchAnime._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (search != null) r'search': search,
      });

  Variables$Query$SearchAnime._(this._$data);

  factory Variables$Query$SearchAnime.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$SearchAnime._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  String? get search => (_$data['search'] as String?);

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
    return result$data;
  }

  CopyWith$Variables$Query$SearchAnime<Variables$Query$SearchAnime>
      get copyWith => CopyWith$Variables$Query$SearchAnime(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchAnime) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchAnime<TRes> {
  factory CopyWith$Variables$Query$SearchAnime(
    Variables$Query$SearchAnime instance,
    TRes Function(Variables$Query$SearchAnime) then,
  ) = _CopyWithImpl$Variables$Query$SearchAnime;

  factory CopyWith$Variables$Query$SearchAnime.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchAnime;

  TRes call({
    int? page,
    int? perPage,
    String? search,
  });
}

class _CopyWithImpl$Variables$Query$SearchAnime<TRes>
    implements CopyWith$Variables$Query$SearchAnime<TRes> {
  _CopyWithImpl$Variables$Query$SearchAnime(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchAnime _instance;

  final TRes Function(Variables$Query$SearchAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? search = _undefined,
  }) =>
      _then(Variables$Query$SearchAnime._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchAnime<TRes>
    implements CopyWith$Variables$Query$SearchAnime<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchAnime(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    String? search,
  }) =>
      _res;
}

class Query$SearchAnime {
  Query$SearchAnime({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$SearchAnime.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$SearchAnime(
      Page: l$Page == null
          ? null
          : Query$SearchAnime$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchAnime$Page? Page;

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
    if (!(other is Query$SearchAnime) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchAnime on Query$SearchAnime {
  CopyWith$Query$SearchAnime<Query$SearchAnime> get copyWith =>
      CopyWith$Query$SearchAnime(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAnime<TRes> {
  factory CopyWith$Query$SearchAnime(
    Query$SearchAnime instance,
    TRes Function(Query$SearchAnime) then,
  ) = _CopyWithImpl$Query$SearchAnime;

  factory CopyWith$Query$SearchAnime.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAnime;

  TRes call({
    Query$SearchAnime$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$SearchAnime$Page<TRes> get Page;
}

class _CopyWithImpl$Query$SearchAnime<TRes>
    implements CopyWith$Query$SearchAnime<TRes> {
  _CopyWithImpl$Query$SearchAnime(
    this._instance,
    this._then,
  );

  final Query$SearchAnime _instance;

  final TRes Function(Query$SearchAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAnime(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$SearchAnime$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchAnime$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$SearchAnime$Page.stub(_then(_instance))
        : CopyWith$Query$SearchAnime$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$SearchAnime<TRes>
    implements CopyWith$Query$SearchAnime<TRes> {
  _CopyWithStubImpl$Query$SearchAnime(this._res);

  TRes _res;

  call({
    Query$SearchAnime$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchAnime$Page<TRes> get Page =>
      CopyWith$Query$SearchAnime$Page.stub(_res);
}

const documentNodeQuerySearchAnime = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchAnime'),
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
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
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

class Query$SearchAnime$Page {
  Query$SearchAnime$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$SearchAnime$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$SearchAnime$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$SearchAnime$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchAnime$Page$media.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchAnime$Page$pageInfo? pageInfo;

  final List<Query$SearchAnime$Page$media?>? media;

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
    if (!(other is Query$SearchAnime$Page) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchAnime$Page on Query$SearchAnime$Page {
  CopyWith$Query$SearchAnime$Page<Query$SearchAnime$Page> get copyWith =>
      CopyWith$Query$SearchAnime$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAnime$Page<TRes> {
  factory CopyWith$Query$SearchAnime$Page(
    Query$SearchAnime$Page instance,
    TRes Function(Query$SearchAnime$Page) then,
  ) = _CopyWithImpl$Query$SearchAnime$Page;

  factory CopyWith$Query$SearchAnime$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAnime$Page;

  TRes call({
    Query$SearchAnime$Page$pageInfo? pageInfo,
    List<Query$SearchAnime$Page$media?>? media,
    String? $__typename,
  });
  CopyWith$Query$SearchAnime$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Query$SearchAnime$Page$media?>? Function(
              Iterable<
                  CopyWith$Query$SearchAnime$Page$media<
                      Query$SearchAnime$Page$media>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchAnime$Page<TRes>
    implements CopyWith$Query$SearchAnime$Page<TRes> {
  _CopyWithImpl$Query$SearchAnime$Page(
    this._instance,
    this._then,
  );

  final Query$SearchAnime$Page _instance;

  final TRes Function(Query$SearchAnime$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAnime$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$SearchAnime$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Query$SearchAnime$Page$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchAnime$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$SearchAnime$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$SearchAnime$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Query$SearchAnime$Page$media?>? Function(
                  Iterable<
                      CopyWith$Query$SearchAnime$Page$media<
                          Query$SearchAnime$Page$media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchAnime$Page$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchAnime$Page<TRes>
    implements CopyWith$Query$SearchAnime$Page<TRes> {
  _CopyWithStubImpl$Query$SearchAnime$Page(this._res);

  TRes _res;

  call({
    Query$SearchAnime$Page$pageInfo? pageInfo,
    List<Query$SearchAnime$Page$media?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchAnime$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchAnime$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$SearchAnime$Page$pageInfo {
  Query$SearchAnime$Page$pageInfo({
    this.total,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.perPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchAnime$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$perPage = json['perPage'];
    final l$$__typename = json['__typename'];
    return Query$SearchAnime$Page$pageInfo(
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
    if (!(other is Query$SearchAnime$Page$pageInfo) ||
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

extension UtilityExtension$Query$SearchAnime$Page$pageInfo
    on Query$SearchAnime$Page$pageInfo {
  CopyWith$Query$SearchAnime$Page$pageInfo<Query$SearchAnime$Page$pageInfo>
      get copyWith => CopyWith$Query$SearchAnime$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchAnime$Page$pageInfo<TRes> {
  factory CopyWith$Query$SearchAnime$Page$pageInfo(
    Query$SearchAnime$Page$pageInfo instance,
    TRes Function(Query$SearchAnime$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchAnime$Page$pageInfo;

  factory CopyWith$Query$SearchAnime$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAnime$Page$pageInfo;

  TRes call({
    int? total,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    int? perPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAnime$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchAnime$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchAnime$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchAnime$Page$pageInfo _instance;

  final TRes Function(Query$SearchAnime$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? perPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAnime$Page$pageInfo(
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

class _CopyWithStubImpl$Query$SearchAnime$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchAnime$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchAnime$Page$pageInfo(this._res);

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

class Query$SearchAnime$Page$media {
  Query$SearchAnime$Page$media({
    required this.id,
    this.title,
    this.$__typename = 'Media',
  });

  factory Query$SearchAnime$Page$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$SearchAnime$Page$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$SearchAnime$Page$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$SearchAnime$Page$media$title? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchAnime$Page$media) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchAnime$Page$media
    on Query$SearchAnime$Page$media {
  CopyWith$Query$SearchAnime$Page$media<Query$SearchAnime$Page$media>
      get copyWith => CopyWith$Query$SearchAnime$Page$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchAnime$Page$media<TRes> {
  factory CopyWith$Query$SearchAnime$Page$media(
    Query$SearchAnime$Page$media instance,
    TRes Function(Query$SearchAnime$Page$media) then,
  ) = _CopyWithImpl$Query$SearchAnime$Page$media;

  factory CopyWith$Query$SearchAnime$Page$media.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAnime$Page$media;

  TRes call({
    int? id,
    Query$SearchAnime$Page$media$title? title,
    String? $__typename,
  });
  CopyWith$Query$SearchAnime$Page$media$title<TRes> get title;
}

class _CopyWithImpl$Query$SearchAnime$Page$media<TRes>
    implements CopyWith$Query$SearchAnime$Page$media<TRes> {
  _CopyWithImpl$Query$SearchAnime$Page$media(
    this._instance,
    this._then,
  );

  final Query$SearchAnime$Page$media _instance;

  final TRes Function(Query$SearchAnime$Page$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAnime$Page$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Query$SearchAnime$Page$media$title?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchAnime$Page$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$SearchAnime$Page$media$title.stub(_then(_instance))
        : CopyWith$Query$SearchAnime$Page$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Query$SearchAnime$Page$media<TRes>
    implements CopyWith$Query$SearchAnime$Page$media<TRes> {
  _CopyWithStubImpl$Query$SearchAnime$Page$media(this._res);

  TRes _res;

  call({
    int? id,
    Query$SearchAnime$Page$media$title? title,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchAnime$Page$media$title<TRes> get title =>
      CopyWith$Query$SearchAnime$Page$media$title.stub(_res);
}

class Query$SearchAnime$Page$media$title {
  Query$SearchAnime$Page$media$title({
    this.romaji,
    this.english,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory Query$SearchAnime$Page$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$romaji = json['romaji'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return Query$SearchAnime$Page$media$title(
      romaji: (l$romaji as String?),
      english: (l$english as String?),
      native: (l$native as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? romaji;

  final String? english;

  final String? native;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$english = english;
    _resultData['english'] = l$english;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$romaji = romaji;
    final l$english = english;
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$romaji,
      l$english,
      l$native,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchAnime$Page$media$title) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchAnime$Page$media$title
    on Query$SearchAnime$Page$media$title {
  CopyWith$Query$SearchAnime$Page$media$title<
          Query$SearchAnime$Page$media$title>
      get copyWith => CopyWith$Query$SearchAnime$Page$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchAnime$Page$media$title<TRes> {
  factory CopyWith$Query$SearchAnime$Page$media$title(
    Query$SearchAnime$Page$media$title instance,
    TRes Function(Query$SearchAnime$Page$media$title) then,
  ) = _CopyWithImpl$Query$SearchAnime$Page$media$title;

  factory CopyWith$Query$SearchAnime$Page$media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAnime$Page$media$title;

  TRes call({
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAnime$Page$media$title<TRes>
    implements CopyWith$Query$SearchAnime$Page$media$title<TRes> {
  _CopyWithImpl$Query$SearchAnime$Page$media$title(
    this._instance,
    this._then,
  );

  final Query$SearchAnime$Page$media$title _instance;

  final TRes Function(Query$SearchAnime$Page$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? romaji = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAnime$Page$media$title(
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        english:
            english == _undefined ? _instance.english : (english as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchAnime$Page$media$title<TRes>
    implements CopyWith$Query$SearchAnime$Page$media$title<TRes> {
  _CopyWithStubImpl$Query$SearchAnime$Page$media$title(this._res);

  TRes _res;

  call({
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  }) =>
      _res;
}
