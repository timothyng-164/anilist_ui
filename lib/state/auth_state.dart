import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../graphql/anilist/query/getAuthenticatedUser.graphql.dart';

String tokenKey = 'anilistToken';

class AuthState extends ChangeNotifier {
  String? anilistToken;
  Query$GetAuthenticatedUser$Viewer? authenticatedUser;
  bool isLoading = false;

  AuthState() {
    debugPrint("Initializing AuthState.");
    const storage = FlutterSecureStorage();
    // async/await can't be used in constructors :(
    storage.read(key: tokenKey).then((token) {
      if (token != null) {
        _getAuthenticatedUser(token).then((user) {
          bool isAuthenticated = user != null;
          anilistToken = isAuthenticated ? token : null;
          authenticatedUser = user;
          notifyListeners();
        });
      } else {
        anilistToken = null;
        authenticatedUser = null;
        notifyListeners();
      }
    });
  }

  bool isAuthenticated() => !(anilistToken == null);

  Future<bool> updateToken(String token) async {
    var user = await _getAuthenticatedUser(token);
    bool success = user != null;
    if (!success) return false;

    const storage = FlutterSecureStorage();
    await storage.write(key: tokenKey, value: token);
    anilistToken = token;

    authenticatedUser = user;
    debugPrint(
        'Set authenticated user ${authenticatedUser?.name} (${authenticatedUser?.id})');
    notifyListeners();
    return true;
  }

  Future<void> clearToken() async {
    const storage = FlutterSecureStorage();
    await storage.delete(key: tokenKey);

    anilistToken = null;
    authenticatedUser = null;
    notifyListeners();
  }
}

GraphQLClient buildGraphQLClient(String? token, GraphQLCache? cache) {
  HttpLink httpLink = HttpLink('https://graphql.anilist.co');
  final authLink =
      AuthLink(getToken: () => token == null ? null : 'Bearer $token');
  final link = authLink.concat(httpLink);

  return GraphQLClient(link: link, cache: cache ?? GraphQLCache());
}

Future<Query$GetAuthenticatedUser$Viewer?> _getAuthenticatedUser(
    String token) async {
  var graphQLClient = buildGraphQLClient(token, null);
  var result = await graphQLClient
      .query$GetAuthenticatedUser(Options$Query$GetAuthenticatedUser(
    fetchPolicy: FetchPolicy.networkOnly,
    errorPolicy: ErrorPolicy.ignore,
  ));
  if (result.hasException) {
    debugPrint('Exception checking user authentication: ${result.exception}');
    return null;
  }
  var user = result.parsedData?.Viewer;
  debugPrint('Successfully authenticated user ${user?.name} (${user?.id})');
  return user;
}
