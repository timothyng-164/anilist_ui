import 'package:flutter/material.dart';

class CenteredItem extends StatelessWidget {
  const CenteredItem({
    super.key,
    required this.item,
    this.flex = false,
  });

  final Widget item;
  final bool flex;

  @override
  Widget build(BuildContext context) {
    var widget = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [item],
      ),
    );
    return flex ? Flexible(child: widget) : widget;
  }
}
