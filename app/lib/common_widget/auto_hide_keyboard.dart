import 'package:flutter/material.dart';

class AutoHideKeyboard extends StatelessWidget {
  final Widget child;

  const AutoHideKeyboard({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => hideKeyboard(context),
      onTapDown: (_) => hideKeyboard(context),
      behavior: HitTestBehavior.opaque,
      child: child,
    );
  }

  void hideKeyboard(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
