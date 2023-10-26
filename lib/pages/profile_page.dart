import 'package:anilist_ui/routing/routes.dart';
import 'package:anilist_ui/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var authState = context.watch<AuthState>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Profile Page.'),
            ElevatedButton(
              onPressed: () {
                authState.clearToken();
                const BrowseRoute().go(context);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO
// profile picture
// username
// user stats
// favorite manga/anime

