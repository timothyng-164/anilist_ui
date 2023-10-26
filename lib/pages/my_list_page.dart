import 'package:flutter/material.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
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