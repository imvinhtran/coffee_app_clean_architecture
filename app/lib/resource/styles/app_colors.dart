part of '../resource.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFC67C4E);
  static const Color secondaryColor = Color(0xFFEDD6C8);
  static const Color black = Color(0xFF313131);
  static const Color primaryLight = Color(0xFFE3E3E3);
  static const Color secondaryLight = Color(0xFFF9F2ED);
  static const Color white = Color(0xFFFFFFFF);
  static const Color mainBG = Color(0xFFF9F2ED);
  static const Color transparent = Colors.transparent;
  static const LinearGradient gradientBlackBg = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: <Color>[
      Color(0xFF111111),
      Color(0xFF313131),
    ],
  );
}
