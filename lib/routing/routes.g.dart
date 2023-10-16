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
          factory: $BrowseRouteDateExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'anime/:id',
              factory: $AnimeByIDRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/login',
          factory: $LoginRouteDataExtension._fromState,
        ),
      ],
    );

extension $MainShellRouteDataExtension on MainShellRouteData {
  static MainShellRouteData _fromState(GoRouterState state) =>
      const MainShellRouteData();
}

extension $BrowseRouteDateExtension on BrowseRouteDate {
  static BrowseRouteDate _fromState(GoRouterState state) =>
      const BrowseRouteDate();

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

extension $LoginRouteDataExtension on LoginRouteData {
  static LoginRouteData _fromState(GoRouterState state) =>
      const LoginRouteData();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
