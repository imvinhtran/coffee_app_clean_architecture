import 'package:flutter/material.dart';

import '../../resource/resource.dart';

class AppText extends StatelessWidget {
  final TextStyle? style;
  final String? title;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const AppText(
    this.title, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });
  //UPDATE NEW VERSION - ONLY USE THIS
  // ~ ~ ~ TITLE ~ ~ ~ ~ ~ HEADLINE ~ ~ ~
  factory AppText.headline1(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title ?? '',
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.headline1New.copyWith(
        color: color,
      ),
    );
  }

  factory AppText.headline2(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.headline2New.copyWith(
        color: color,
      ),
    );
  }

  factory AppText.headline3(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.headline3New.copyWith(
        color: color,
      ),
    );
  }

  factory AppText.headline4(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.headline4New.copyWith(
        color: color,
      ),
    );
  }

  //BODY
  factory AppText.body1Default(
    String? title, {
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title ?? '',
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.body1DefaultNew.copyWith(
        color: color,
      ),
    );
  }
  factory AppText.body1Emphasized(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.body1EmphasizedNew.copyWith(
        color: color,
      ),
    );
  }

  factory AppText.body2Default(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.body2DefaultNew.copyWith(
        color: color,
      ),
    );
  }

  factory AppText.body2Emphasized(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.body2EmphasizedNew.copyWith(
        color: color,
      ),
    );
  }

  //SUPPORT

  factory AppText.support1Default(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.support1DefaultNew.copyWith(
        color: color,
      ),
    );
  }

  factory AppText.support1Emphasized(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.support1EmphasizedNew.copyWith(
        color: color,
      ),
    );
  }

  factory AppText.support2Default(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.support2DefaultNew.copyWith(
        color: color,
      ),
    );
  }

  factory AppText.support2Emphasized(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.support2EmphasizedNew.copyWith(
        color: color,
      ),
    );
  }

  factory AppText.smallest(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.smallest.copyWith(
        color: color,
      ),
    );
  }

  factory AppText.button(
    String? title, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText(
      title,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: AppTextStyles.buttonNew.copyWith(
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: style,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
