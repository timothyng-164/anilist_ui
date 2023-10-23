import 'package:anilist_ui/graphql/anilist/getAuthenticatedUser.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String tokenKey = 'anilistToken';

class AuthState extends ChangeNotifier {
  String? anilistToken;

  AuthState() {
    print("Initializing auth state.");
    const storage = FlutterSecureStorage();
    // async/await can't be used in constructors :(
    storage.read(key: tokenKey).then((token) {
      if (token != null) {
        _isValidToken(token).then((isValid) {
          anilistToken = isValid ? token : null;
          notifyListeners();
        });
      } else {
        anilistToken = null;
        notifyListeners();
      }
    });
  }

  bool isAuthenticated() => !(anilistToken == null);

  Future<bool> updateToken(String token) async {
    bool success = await _isValidToken(token);
    if (!success) return false;

    const storage = FlutterSecureStorage();
    await storage.write(key: tokenKey, value: token);
    anilistToken = token;
    notifyListeners();

    return true;
  }

  Future<void> clearToken() async {
    const storage = FlutterSecureStorage();
    await storage.delete(key: tokenKey);

    anilistToken = null;
    notifyListeners();
  }
}

GraphQLClient _buildGraphQLClient(String token) {
  return GraphQLClient(
    cache: GraphQLCache(),
    link: HttpLink(
      'https://graphql.anilist.co',
      defaultHeaders: {'Authorization': 'Bearer $token'},
    ),
  );
}

Future<bool> _isValidToken(String token) async {
  var graphQLClient = _buildGraphQLClient(token);
  var result = await graphQLClient
      .query$GetAuthenticatedUser(Options$Query$GetAuthenticatedUser(
    fetchPolicy: FetchPolicy.networkOnly,
    errorPolicy: ErrorPolicy.ignore,
  ));
  if (result.hasException) {
    print('Exception checking user authentication: ${result.exception}');
    return false;
  }
  var data = result.parsedData?.Viewer;
  print('Successfully authenticated user ${data?.name} (${data?.id})');
  return true;
}
