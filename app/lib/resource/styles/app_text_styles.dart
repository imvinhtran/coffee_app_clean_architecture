part of '../resource.dart';

class AppTextStyles {
  AppTextStyles._();
  static const kInherit = true;

  // HEADLINE

  static TextStyle get headline1 {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeHeadline1.sp, //17
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get headline2 {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeHeadline2.sp, //15
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get headline4 {
    return TextStyle(
        inherit: kInherit,
        fontSize: Dimens.d18.sp, //18
        fontWeight: FontWeight.w700,
        fontFamily: FontFamily.sFPro,
        height: 24 / 18);
  }

  // BODY
  static TextStyle get body1Default {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeBody.sp, //17
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      letterSpacing: 0.2,
      height: 24 / 17,
    );
  }

  static TextStyle get body1Emphasized {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeBody.sp, //17
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get body2Default {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeBodyEm.sp, //15
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      letterSpacing: 15 * 0.02,
      height: 20 / 15,
    );
  }

  static TextStyle get body2Emphasized {
    return TextStyle(
        inherit: kInherit,
        fontSize: Dimens.kTextSizeBodyEm.sp, //15
        fontWeight: FontWeight.w600,
        fontFamily: FontFamily.sFPro,
        height: 20 / 15,
        letterSpacing: 0.2);
  }

  // SUPPORT
  static TextStyle get supportTextMicroSize {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.supportMicroSize.sp, //10
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 1.8.h,
    );
  }

  static TextStyle get support1Default {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support1.sp, //13
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 16 / 13,
      letterSpacing: 0.4,
    );
  }

  static TextStyle get support1Emphasized {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support1.sp, //13
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get support2Default {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeSupport.sp, //12
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
    );
  }

  static TextStyle get support2Emphasized {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.kTextSizeSupport.sp, //12
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
    );
  }

  //UPDATE NEW VERSION - ONLY USE THIS
  // HEADLINE
  static TextStyle get headline1New {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.headline1.sp, //32
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 38.19 / Dimens.headline1.sp,
    );
  }

  static TextStyle get headline2New {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.headline2.sp, //28
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 33.41 / Dimens.headline2.sp,
    );
  }

  static TextStyle get headline3New {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.headline3.sp, //24
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 28.64 / Dimens.headline3.sp,
    );
  }

  static TextStyle get headline4New {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.headline4.sp, //18
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 21.48 / Dimens.headline4.sp,
    );
  }

  // BODY

  static TextStyle get body1DefaultNew {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.body1.sp, //17
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 20.29 / Dimens.body1.sp,
    );
  }

  static TextStyle get body1EmphasizedNew {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.body1.sp, //17
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 20.29 / Dimens.body1.sp,
    );
  }

  static TextStyle get body2DefaultNew {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.body2.sp, //15
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 17.9 / Dimens.body2.sp,
    );
  }

  static TextStyle get body2EmphasizedNew {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.body2.sp, //15
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 17.9 / Dimens.body2.sp,
    );
  }

  //SUPPORT

  static TextStyle get support1DefaultNew {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support1New.sp, //13
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 15.51 / Dimens.support1New.sp,
    );
  }

  static TextStyle get support1EmphasizedNew {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support1New.sp, //13
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 15.51 / Dimens.support1New.sp,
    );
  }

  static TextStyle get support2DefaultNew {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support2New.sp, //13
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 14.32 / Dimens.support2New.sp,
    );
  }

  static TextStyle get support2EmphasizedNew {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.support2New.sp, //13
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 14.32 / Dimens.support2New.sp,
    );
  }

  static TextStyle get smallest {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.smallest.sp, //12
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFPro,
      height: 12 / Dimens.smallest.sp,
    );
  }

  static TextStyle get buttonNew {
    return TextStyle(
      inherit: kInherit,

      fontSize: Dimens.button.sp, //15
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.sFPro,
      height: 17.9 / Dimens.button.sp,
    );
  }
  //END NEW VERSION
}
