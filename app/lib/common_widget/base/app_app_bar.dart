// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_app/resource/resource.dart';
import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget {
  final String? title;
  final bool? isBackButtonVisible;
  final VoidCallback? onBackButtonPressed;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final double? iconSize;
  final Color? iconColor;

  const AppAppBar({
    super.key,
    this.title,
    this.isBackButtonVisible,
    this.onBackButtonPressed,
    this.backgroundColor,
    this.actions,
    this.iconSize,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? ''),
      actions: actions,
      iconTheme: IconThemeData(
        color: iconColor ?? AppColors.white,
        size: iconSize ?? 22,
      ),
      backgroundColor: backgroundColor ?? AppColors.transparent,
    );
  }
}
