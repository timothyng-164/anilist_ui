import 'package:anilist_ui/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class PageShell extends HookWidget {
  const PageShell({super.key, required this.selectedPage});

  final Widget selectedPage;

  int _getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/login')) {
      return 1;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final int selectedIndex = _getCurrentIndex(context);

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
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Browse'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.login), label: 'Login'),
              ],
              currentIndex: selectedIndex,
              onTap: (index) {
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
              },
            ),
          ],
        ),
      ),
    );
  }
}
