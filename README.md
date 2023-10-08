# anilist_ui

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## GraphQL Code Generation

The schema.graphql file is generated with the [get-graphql-schema](https://github.com/prisma-labs/get-graphql-schema#get-graphql-schema-) tool.

```bash
$ get-graphql-schema https://graphql.anilist.co > ./lib/graphql/schema.graphql
```

The [graphql_codegen](https://github.com/heftapp/graphql_codegen/tree/main/packages/graphql_codegen#basic-usage) tool is used to generate dart code from the schema.

```bash
# Generate dart files
$ dart run build_runner build
```

[Example with flutter_graphql](https://github.com/heftapp/graphql_codegen/tree/main/packages/graphql_codegen#client-graphql_flutter)