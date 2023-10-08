import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pretty_json/pretty_json.dart';

class CounterScreen extends HookWidget {
  const CounterScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    final readResult = useQuery(
      QueryOptions(
        document: gql(readQuery),
        variables: {'perPage': 5},
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ApiHookTest2(readResult: readResult),
            // ApiHookTest(pageCount: counter.value),
            // ApiTest(pageCount: counter.value),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          readResult.refetch();
          // counter.value++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ApiHookTest2 extends HookWidget {
  const ApiHookTest2({super.key, required this.readResult});

  final readResult;

  @override
  Widget build(BuildContext context) {
    final result = readResult.result;

    if (result.hasException) {
      return Text("Exception: $result");
    }

    if (result.isLoading) {
      return const Text("Loading");
    }

    // TODO: use gridview
    return Text(prettyJson(result.data));
  }
}

QueryOptions queryOptions = QueryOptions(
  document: gql(readQuery),
  variables: queryVariables,
  // pollInterval: const Duration(seconds: 2),
);
const queryVariables = {'perPage': 2};
const String readQuery = """
    query (\$page: Int, \$perPage: Int, \$search: String) {
      Page(page: \$page, perPage: \$perPage) {
        pageInfo {
          total
          currentPage
          lastPage
          hasNextPage
          perPage
        }
        media(search: \$search, type: ANIME) {
          id
          title {
            romaji
            english
            native
          }
        }
      }
    }
  """;
