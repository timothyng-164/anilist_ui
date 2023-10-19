import 'dart:async';

import 'package:anilist_ui/routing/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteErrorPage extends StatelessWidget {
  const RouteErrorPage({super.key, this.goException});

  final GoException? goException;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    print(goException);

    void redirectToHome() {
      if (context.mounted) context.go(homeRoute);
    }

    Timer(const Duration(seconds: 2), redirectToHome);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Page not available. Redirecting to home page.',
              style: textTheme.displayMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: redirectToHome,
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
