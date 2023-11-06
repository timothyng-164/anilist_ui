import 'dart:convert';

import 'package:flutter/foundation.dart';

class PrintUtil {
  static void prettydebugPrint(Object? object) {
    debugPrint(prettyJson(object));
  }

  static String prettyJson(Object? object) {
    return const JsonEncoder.withIndent('\t').convert(object);
  }
}
