part of '../resource.dart';

class AppTextStyles {
  AppTextStyles._();
  static const kInherit = true;

  // HEADLINE

  static TextStyle get headline1 {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeHeadline1, //17
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get headline2 {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeHeadline2, //15
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get headline4 {
    return const TextStyle(
        inherit: kInherit,
        fontSize: Dimens.d18, //18
        fontWeight: FontWeight.w700,
        fontFamily: FontFamily.sFPro,
        height: 24 / 18);
  }

  // BODY
  static TextStyle get body1Default {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeBody, //17
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get body1Emphasized {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeBody, //17
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get body2Default {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeBodyEm, //15
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      letterSpacing: 15 * 0.02,
      height: 20 / 15,
    );
  }

  static TextStyle get body2Emphasized {
    return const TextStyle(
        inherit: kInherit,
        fontSize: Dimens.kTextSizeBodyEm, //15
        fontWeight: FontWeight.w600,
        fontFamily: FontFamily.sFPro,
        height: 20 / 15,
        letterSpacing: 0.2);
  }

  // SUPPORT
  static TextStyle get supportTextMicroSize {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.supportMicroSize, //10
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 1.8.h,
    );
  }

  static TextStyle get support1Default {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support1, //13
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 16 / 13,
      letterSpacing: 0.4,
    );
  }

  static TextStyle get support1Emphasized {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support1, //13
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get support2Default {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeSupport, //12
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get support2Emphasized {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeSupport, //12
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
    );
  }

  //UPDATE NEW VERSION - ONLY USE THIS
  // HEADLINE
  static TextStyle get headline1New {
    return const TextStyle(
      inherit: kInherit,
      fontSize: Dimens.headline1, //32
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get headline2New {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.headline2, //28
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 33.41 / Dimens.headline2,
    );
  }

  static TextStyle get headline3New {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.headline3, //24
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 28.64 / Dimens.headline3,
    );
  }

  static TextStyle get headline4New {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.headline4, //18
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 21.48 / Dimens.headline4,
    );
  }

  // BODY

  static TextStyle get body1DefaultNew {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.body1, //17
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 20.29 / Dimens.body1,
    );
  }

  static TextStyle get body1EmphasizedNew {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.body1, //17
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 20.29 / Dimens.body1,
    );
  }

  static TextStyle get body2DefaultNew {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.body2, //15
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 17.9 / Dimens.body2,
    );
  }

  static TextStyle get body2EmphasizedNew {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.body2, //15
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 17.9 / Dimens.body2,
    );
  }

  //SUPPORT

  static TextStyle get support1DefaultNew {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support1New, //13
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 15.51 / Dimens.support1New,
    );
  }

  static TextStyle get support1EmphasizedNew {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support1New, //13
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 15.51 / Dimens.support1New,
    );
  }

  static TextStyle get support2DefaultNew {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support2New, //13
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 14.32 / Dimens.support2New,
    );
  }

  static TextStyle get support2EmphasizedNew {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support2New, //13
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 14.32 / Dimens.support2New,
    );
  }

  static TextStyle get smallest {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.smallest, //12
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 12 / Dimens.smallest,
    );
  }

  static TextStyle get buttonNew {
    return const TextStyle(
      inherit: kInherit,

      fontSize: Dimens.button, //15
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 17.9 / Dimens.button,
    );
  }
  //END NEW VERSION
}
