import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../routing/routes.dart';
import '../../state/auth_state.dart';

/// A page wrapper that redirects the user to the login page if they're not
/// authenticated. This should be used for pages that require the user to be 
/// logged in.
///
/// This is needed for web app because the user can manually enter a url route
/// to an authenticated page without being logged in.
class AuthenticatedPageWrapper extends StatelessWidget {
  const AuthenticatedPageWrapper({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    var authState = context.watch<AuthState>();

    Timer(const Duration(seconds: 2), () {
      if (!authState.isAuthenticated()) {
        const LoginRoute().go(context);
      }
    });

    if (!authState.isAuthenticated()) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return child;
  }
}
