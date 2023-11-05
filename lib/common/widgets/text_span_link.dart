import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../util/navigation_util.dart';

class TextSpanUtil {
  static TextSpan textLink({
    required String text,
    required String url,
    required BuildContext context,
    TextStyle? style,
  }) {
    var colorScheme = Theme.of(context).colorScheme;
    return TextSpan(
      text: text,
      style: style ??
          TextStyle(
            color: colorScheme.primary,
            decoration: TextDecoration.underline,
          ),
      recognizer: TapGestureRecognizer()
        ..onTap = () async {
          NavigationUtil.launchExternalUrl(url);
        },
    );
  }
}
