import 'package:anilist_ui/pages/route_error_page.dart';
import 'package:anilist_ui/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  routes: $appRoutes,
  errorBuilder: (context, state) => RouteErrorPage(goException: state.error),
  initialLocation: '/browse',
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
);
