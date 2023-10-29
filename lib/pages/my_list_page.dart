import 'package:anilist_ui/routing/routes.dart';
import 'package:flutter/material.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    void showFilterSheet() {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            color: Colors.amber,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('Modal BottomSheet'),
                  ElevatedButton(
                    child: const Text('Close BottomSheet'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('My List'),
            IconButton(
              icon: const Icon(Icons.filter_list),
              onPressed: () => showFilterSheet(),
            )
          ],
        ),
      ),
      body: const Center(
        child: Text('My List Page.'),
      ),
    );
  }
}

// TODO
// appbar - search, filters
// filters - bottom sheet like tachiyomi
//   - sort
//   - filters - media type, status, etc
