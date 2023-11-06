import 'package:anilist_ui/routing/go_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import 'state/auth_state.dart';

void main() async {
  // HiveStore is needed for GraphQL client.
  // https://pub.dev/packages/graphql_flutter#usage
  await initHiveForFlutter();

  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (context) => AuthState())],
        child: const AnilistApp());
  }
}

class AnilistApp extends StatelessWidget {
  const AnilistApp({super.key});

  @override
  Widget build(BuildContext context) {
    var authState = context.watch<AuthState>();
    String? token = authState.anilistToken;
    var client = buildGraphQLClient(token, GraphQLCache(store: HiveStore()));

    return GraphQLProvider(
      client: ValueNotifier(client),
      child: MaterialApp.router(
        title: 'Anilist UI',
        theme: _buildTheme(context),
        routerConfig: goRouter,
      ),
    );
  }
}

ThemeData _buildTheme(context) {
  var baseTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
    useMaterial3: true,
  );

  return baseTheme.copyWith(
    textTheme: GoogleFonts.interTextTheme(baseTheme.textTheme),
  );
}
