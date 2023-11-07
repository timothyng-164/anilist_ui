# Anilist App

An anime/manga tracker built using Flutter. [Anilist](https://anilist.gitbook.io/anilist-apiv2-docs/) is used as the backend.

## Configuration

This project uses [envied](https://pub.dev/packages/envied) to setup environment variables. The anilist client ID can be configured in the '.env' file.

If any sensitive info is added to the environment variables, they need to be added to .gitignore.

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
