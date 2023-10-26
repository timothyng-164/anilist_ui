import 'package:anilist_ui/pages/media_by_id_page.dart';
import 'package:anilist_ui/pages/login_page.dart';
import 'package:anilist_ui/pages/my_list_page.dart';
import 'package:anilist_ui/pages/profile_page.dart';
import 'package:anilist_ui/pages/search_page.dart';
import 'package:anilist_ui/routing/page_shell.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../graphql/anilist/query/schema.graphql.dart';

part 'routes.g.dart';

final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<MainShellRouteData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<BrowseRoute>(
      path: '/browse',
      routes: [
        TypedGoRoute<AnimeByIDRoute>(path: 'anime/:id'),
        TypedGoRoute<MangaByIDRoute>(path: 'manga/:id'),
      ],
    ),
    TypedGoRoute<LoginRoute>(path: '/login'),
    TypedGoRoute<ProfileRoute>(path: '/profile'),
    TypedGoRoute<MyListRoute>(path: '/my-list'),
  ],
)
class MainShellRouteData extends ShellRouteData {
  const MainShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      PageShell(selectedPage: navigator);
}

class BrowseRoute extends GoRouteData {
  const BrowseRoute();

  @override
  Widget build(context, state) => const SearchPage();
}

class AnimeByIDRoute extends GoRouteData {
  const AnimeByIDRoute(this.id);

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      MediaByIdPage(id: id, mediaType: Enum$MediaType.ANIME);
}

class MangaByIDRoute extends GoRouteData {
  const MangaByIDRoute(this.id);

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      MediaByIdPage(id: id, mediaType: Enum$MediaType.MANGA);
}

class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(context, state) => const LoginPage();
}

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  @override
  Widget build(context, state) => const ProfilePage();
}

class MyListRoute extends GoRouteData {
  const MyListRoute();

  @override
  Widget build(context, state) => const MyListPage();
}
