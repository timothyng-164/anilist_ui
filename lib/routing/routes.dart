import 'package:anilist_ui/pages/media_by_id_page.dart';
import 'package:anilist_ui/pages/login_page.dart';
import 'package:anilist_ui/pages/search_screen.dart';
import 'package:anilist_ui/routing/page_shell.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<MainShellRouteData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<BrowseRouteDate>(
      path: '/browse',
      routes: [
        TypedGoRoute<AnimeByIDRoute>(
          path: 'anime/:id',
        ),
        TypedGoRoute<MangaByIDRoute>(
          path: 'manga/:id',
        ),
      ],
    ),
    TypedGoRoute<LoginRouteData>(
      path: '/login',
    ),
  ],
)
class MainShellRouteData extends ShellRouteData {
  const MainShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      PageShell(selectedPage: navigator);
}

class BrowseRouteDate extends GoRouteData {
  const BrowseRouteDate();

  @override
  Widget build(context, state) => const SearchScreen();
}

class AnimeByIDRoute extends GoRouteData {
  const AnimeByIDRoute(this.id);

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      MediaByIdPage(id: id);
}

class MangaByIDRoute extends GoRouteData {
  const MangaByIDRoute(this.id);

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      MediaByIdPage(id: id);
}

class LoginRouteData extends GoRouteData {
  const LoginRouteData();

  @override
  Widget build(context, state) => const LoginPage();
}
