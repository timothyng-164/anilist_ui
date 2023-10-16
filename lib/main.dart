import 'package:anilist_ui/routing/go_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import 'state/auth_state.dart';

void main() async {
  // HiveStore is needed for GraphQL client: https://pub.dev/packages/graphql_flutter#usage
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

    HttpLink httpLink = HttpLink('https://graphql.anilist.co');
    final authLink =
        AuthLink(getToken: () => token == null ? null : 'Bearer $token');
    final link = authLink.concat(httpLink);

    return GraphQLProvider(
      client: ValueNotifier(
          GraphQLClient(link: link, cache: GraphQLCache(store: HiveStore()))),
      child: MaterialApp.router(
        title: 'Anilist UI',
        theme: _buildTheme(context),
        routerConfig: goRouter,
      ),
    );
  }

  ThemeData _buildTheme(context) {
    final textTheme = Theme.of(context).textTheme;

    var baseTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.manropeTextTheme(baseTheme.textTheme).copyWith(
        // default style for Text widget
        bodyMedium: GoogleFonts.manrope(
          textStyle: textTheme.labelLarge,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}


