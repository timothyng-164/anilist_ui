import 'package:anilist_ui/routing/routes.dart';
import 'package:anilist_ui/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class PageShell extends HookWidget {
  const PageShell({super.key, required this.selectedPage});

  final Widget selectedPage;

  @override
  Widget build(BuildContext context) {
    var authState = context.watch<AuthState>();
    bool isAuthenticated = authState.isAuthenticated();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: selectedPage,
              ),
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: isAuthenticated
                  ? const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.search), label: 'Browse'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.movie_outlined), label: 'Anime'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.library_books_outlined),
                          label: 'Manga'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.account_circle), label: 'Profile'),
                    ]
                  : const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.search), label: 'Browse'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.login), label: 'Login'),
                    ],
              currentIndex: _getCurrentIndex(context, isAuthenticated),
              onTap: (index) => _onTap(context, index, isAuthenticated),
            ),
          ],
        ),
      ),
    );
  }
}

int _getCurrentIndex(BuildContext context, bool isAuthenticated) {
  final String location = GoRouterState.of(context).uri.toString();
  if (isAuthenticated) {
    if (location.startsWith('/profile')) return 3;
    if (location.startsWith('/manga-list')) return 2;
    if (location.startsWith('/anime-list')) return 1;
    return 0;
  } else {
    if (location.startsWith('/login')) return 1;
    return 0;
  }
}

void _onTap(BuildContext context, int index, bool isAuthenticated) {
  if (isAuthenticated) {
    switch (index) {
      case 0:
        const BrowseRoute().go(context);
        break;
      case 1:
        const AnimeListRoute().go(context);
        break;
      case 2:
        const MangaListRoute().go(context);
        break;
      case 3:
        const ProfileRoute().go(context);
      default:
        throw UnimplementedError("no widget for index $index");
    }
  } else {
    switch (index) {
      case 0:
        const BrowseRoute().go(context);
        break;
      case 1:
        const LoginRoute().go(context);
        break;
      default:
        throw UnimplementedError("no widget for index $index");
    }
  }
}
