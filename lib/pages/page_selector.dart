import 'package:anilist_ui/pages/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PageSelector extends HookWidget {
  const PageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final pageIndex = useState(0);

    Widget page;
    switch (pageIndex.value) {
      case 0:
        page = const SearchScreen(title: "Home Page");
        break;
      case 1:
        page = const SearchScreen(title: "Login");
        break;
      default:
        throw UnimplementedError("no widget for $pageIndex");
    }

    return Scaffold(
        body: SafeArea(
            child: MobileLayout(
                context: context, page: page, pageIndex: pageIndex)));
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
    required this.context,
    required this.page,
    required this.pageIndex,
  });

  final BuildContext context;
  final Widget page;
  final ValueNotifier<int> pageIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: page,
          ),
        ),
        BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
            ],
            currentIndex: pageIndex.value,
            onTap: (value) => pageIndex.value = value),
      ],
    );
  }
}
