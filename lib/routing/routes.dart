import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/widgets/authenticated_page_wrapper.dart';
import '../graphql/anilist/schema.graphql.dart';
import '../pages/list_editor_page.dart';
import '../pages/login_page.dart';
import '../pages/media_by_id_page.dart';
import '../pages/my_list_page.dart';
import '../pages/profile_page.dart';
import '../pages/search_page.dart';
import 'page_shell.dart';

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
    TypedGoRoute<AnimeListRoute>(
      path: '/anime-list',
      routes: [
        TypedGoRoute<AnimeListEditorRoute>(path: 'anime/:id/edit'),
      ],
    ),
    TypedGoRoute<MangaListRoute>(
      path: '/manga-list',
      routes: [
        TypedGoRoute<MangaListEditorRoute>(path: 'manga/:id/edit'),
      ],
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

class AnimeListEditorRoute extends GoRouteData {
  const AnimeListEditorRoute(this.id);

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      AuthenticatedPageWrapper(
        child: ListEditorPage(mediaId: id, mediaType: Enum$MediaType.ANIME),
      );
}

class MangaListEditorRoute extends GoRouteData {
  const MangaListEditorRoute(this.id);

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      AuthenticatedPageWrapper(
        child: ListEditorPage(mediaId: id, mediaType: Enum$MediaType.MANGA),
      );
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

class AnimeListRoute extends GoRouteData {
  const AnimeListRoute();

  @override
  Widget build(context, state) => const AuthenticatedPageWrapper(
      child: MyListPage(mediaType: Enum$MediaType.ANIME));
}

class MangaListRoute extends GoRouteData {
  const MangaListRoute();

  @override
  Widget build(context, state) => const AuthenticatedPageWrapper(
      child: MyListPage(mediaType: Enum$MediaType.MANGA));
}
