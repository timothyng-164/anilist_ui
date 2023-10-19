import 'package:html/parser.dart';

class HtmlUtil {
  static parseHtmlString(String input) {
    // This removes formatting html elements like <br>.
    // If a string is not required, use the flutter_html library instead.
    final document = parse(input);
    String parsedText = parse(document.body!.text).documentElement!.text;
    return parsedText;
  }
}
