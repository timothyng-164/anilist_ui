# anilist_ui

An anime/manga tracker built using Flutter.

[Anilist](https://anilist.gitbook.io/anilist-apiv2-docs/) is used as the backend.

## Configuration

This project uses [envied](https://pub.dev/packages/envied) to setup environment variables.

To set up the project:

1. rename the file `.env-example` to `.env` and update the values.
2. run the code generator.

## Code Generation

This project utlizes a few flutter libraries to generate code.

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

1. get new font (font blurry? only on web?)
2. check if authentication persists in local storage
3. ctrl+F for all TODOs
4. run dart fix
5. replace print statements with logging
6. check spacing on android emulator
7. update README
8. Nice-to-haves: mediaByIdPage: characters, staff, reviews, discussions, links, theme songs, Increment (+) button for list view
