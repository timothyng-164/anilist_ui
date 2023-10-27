import 'dart:convert';

class PrintUtil {
  static void prettyPrint(Object? object) {
    print(prettyJson(object));
  }

  static String prettyJson(Object? object) {
    return const JsonEncoder.withIndent('\t').convert(object);
  }
}
