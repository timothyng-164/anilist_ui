# anilist_ui

An anime/manga tracker built using Flutter.

[Anilist](https://anilist.gitbook.io/anilist-apiv2-docs/) is used as the backend.

## Code Generation

This project utlizes a few flutter libraries to generate type-safe code that would be tedious to manually write.

```bash
# generate (*).g.dart files
$ dart run build_runner build
```

### GraphQL Generation

The [graphql_codegen](https://github.com/heftapp/graphql_codegen/tree/main/packages/graphql_codegen#basic-usage) tool is used to generate dart code from the schema. This allows for type-safe usage of the API.

The schema.graphql file is retrieved with the [get-graphql-schema](https://github.com/prisma-labs/get-graphql-schema#get-graphql-schema-) tool.

```bash
# retrieve schema from anilist server
$ get-graphql-schema https://graphql.anilist.co > ./lib/graphql/schema.graphql
```

[Example with flutter_graphql](https://github.com/heftapp/graphql_codegen/tree/main/packages/graphql_codegen#client-graphql_flutter)

### Route Generation

The [go_router_builder](https://pub.dev/documentation/go_router/latest/topics/Type-safe%20routes-topic.html) tool is used to generate type-safe code for route parameters.

To generate route code, the `part` directive for the generated file needs to be added first.
Example: https://github.com/flutter/packages/tree/main/packages/go_router_builder#source-code

## TODO

TODO: on search_screen.dart

- add user status to MediaCard
- test out error on graphql client

TODO: overall project
1. page_selector routing with authenticated pages
2. Profile page (favorites, stats, user info)
3. My List page
4. get new font
5. replace print statements with logging
6. ctrl+F for all TODOs