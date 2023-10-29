// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainShellRouteData,
    ];

RouteBase get $mainShellRouteData => ShellRouteData.$route(
      navigatorKey: MainShellRouteData.$navigatorKey,
      factory: $MainShellRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/browse',
          factory: $BrowseRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'anime/:id',
              factory: $AnimeByIDRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'manga/:id',
              factory: $MangaByIDRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/login',
          factory: $LoginRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/profile',
          factory: $ProfileRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/my-list',
          factory: $MyListRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'anime/:id/edit',
              factory: $AnimeListEditorRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'manga/:id/edit',
              factory: $MangaListEditorRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $MainShellRouteDataExtension on MainShellRouteData {
  static MainShellRouteData _fromState(GoRouterState state) =>
      const MainShellRouteData();
}

extension $BrowseRouteExtension on BrowseRoute {
  static BrowseRoute _fromState(GoRouterState state) => const BrowseRoute();

  String get location => GoRouteData.$location(
        '/browse',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AnimeByIDRouteExtension on AnimeByIDRoute {
  static AnimeByIDRoute _fromState(GoRouterState state) => AnimeByIDRoute(
        int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/browse/anime/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MangaByIDRouteExtension on MangaByIDRoute {
  static MangaByIDRoute _fromState(GoRouterState state) => MangaByIDRoute(
        int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/browse/manga/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyListRouteExtension on MyListRoute {
  static MyListRoute _fromState(GoRouterState state) => const MyListRoute();

  String get location => GoRouteData.$location(
        '/my-list',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AnimeListEditorRouteExtension on AnimeListEditorRoute {
  static AnimeListEditorRoute _fromState(GoRouterState state) =>
      AnimeListEditorRoute(
        int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/my-list/anime/${Uri.encodeComponent(id.toString())}/edit',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MangaListEditorRouteExtension on MangaListEditorRoute {
  static MangaListEditorRoute _fromState(GoRouterState state) =>
      MangaListEditorRoute(
        int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/my-list/manga/${Uri.encodeComponent(id.toString())}/edit',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
