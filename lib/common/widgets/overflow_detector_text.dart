import 'package:flutter/material.dart';

class OverflowDetectorText extends StatelessWidget {
  const OverflowDetectorText({
    Key? key,
    required this.child,
    required this.isOverflowing,
  }) : super(key: key);

  final Text child;
  final ValueNotifier<bool> isOverflowing;

  @override
  Widget build(BuildContext context) {
    var painter = TextPainter(
      maxLines: child.maxLines,
      textAlign: child.textAlign ?? TextAlign.start,
      textDirection: child.textDirection ?? TextDirection.ltr,
      text: child.textSpan ??
          TextSpan(
            text: child.data,
            style: child.style,
          ),
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        painter.layout(maxWidth: constraints.maxWidth);
        Future.delayed(Duration.zero,
            () => isOverflowing.value = painter.didExceedMaxLines);
        return child;
      },
    );
  }
}
