import 'package:flutter/material.dart';

class SnackbarUtil {
  static SnackBar commonSnackbar(String text) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: const Duration(milliseconds: 1000),
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 70),
      dismissDirection: DismissDirection.none,
      content: Text(text),
    );
  }
}
