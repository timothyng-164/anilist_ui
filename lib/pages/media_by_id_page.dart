import 'package:flutter/material.dart';

class MediaByIdPage extends StatelessWidget {
  const MediaByIdPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Anime ID: $id',
          style: textTheme.displayLarge,
        ),
      ),
    );
  }
}
