import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class QueryResultHandler extends HookWidget {
  const QueryResultHandler({
    super.key,
    required this.result,
    required this.child,
    this.refetch,
  });

  final QueryResult result;
  final Widget child;
  final VoidCallback? refetch;

  @override
  Widget build(BuildContext context) {
    if (result.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (result.hasException) {
      print('Unknown exception occurred during query: ${result.exception}');
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('An error has occurrd.'),
            const SizedBox(height: 20),
            if (refetch != null)
              ElevatedButton(
                onPressed: refetch,
                child: const Text('Retry'),
              ),
          ],
        ),
      );
    }

    return child;
  }
}
