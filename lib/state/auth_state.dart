import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

String tokenKey = 'anilistToken';

class AuthState extends ChangeNotifier {
  String? anilistToken;

  AuthState() {
    const storage = FlutterSecureStorage();
    storage.read(key: tokenKey).then((token) {
      anilistToken = token;
      notifyListeners();
    });
  }

  void updateToken(String token) {
    // TODO: check if token is valid/invalid
    const storage = FlutterSecureStorage();
    storage.write(key: tokenKey, value: token).then((_) {
      anilistToken = token;
      notifyListeners();
    });
  }

  // bool isAuthenticated() => !(anilistToken == null);
}
