import 'package:coffee_app/common_widget/base/app_text.dart';
import 'package:coffee_app/resource/resource.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Radius? radius;
  final Color? color;
  final Color? textColor;
  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.radius,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            color: color ?? AppColors.primaryColor,
            borderRadius: BorderRadius.all(
              radius ?? const Radius.circular(16),
            )),
        child: AppText.body1Emphasized(
          title,
          color: textColor ?? AppColors.white,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
