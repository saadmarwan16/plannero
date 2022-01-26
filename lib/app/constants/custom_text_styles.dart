import 'package:flutter/material.dart';
import 'package:plannero/app/constants/custom_colors.dart';

abstract class CustomTextStyles {
  static const headline1Text = TextStyle(
    color: CustomColors.dark,
    fontSize: 42.0,
    fontWeight: FontWeight.w400,
    fontFamily: 'Lato',
  );

  static const headline2Text = TextStyle(
    color: CustomColors.dark,
    fontSize: 35.0,
    fontWeight: FontWeight.w400,
    fontFamily: 'Lato',
  );

  static const headline3Text = TextStyle(
    color: CustomColors.dark,
    fontSize: 29.0,
    fontWeight: FontWeight.w400,
    fontFamily: 'Lato',
  );

  static const headline4Text = TextStyle(
    color: CustomColors.dark,
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
    fontFamily: 'Lato',
  );

  static const body1Text = TextStyle(
    color: CustomColors.dark,
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
    fontFamily: 'SourceSansPro',
  );

  static const body2Text = TextStyle(
    color: CustomColors.dark,
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
    fontFamily: 'SourceSansPro',
  );

  static const buttonText = TextStyle(
    color: CustomColors.dark,
    fontSize: 22.0,
    fontWeight: FontWeight.w500,
    fontFamily: 'SourceSansPro',
  );

  static const captionText = TextStyle(
    color: CustomColors.dark,
    fontSize: 15.0,
    fontWeight: FontWeight.w300,
    fontFamily: 'SourceSansPro',
  );

  static final darkHeadline1Text = headline1Text.copyWith(
    color: CustomColors.light,
  );

  static final darkHeadline2Text = headline2Text.copyWith(
    color: CustomColors.light,
  );

  static final darkHeadline3Text = headline3Text.copyWith(
    color: CustomColors.light,
  );

  static final darkHeadline4Text = headline4Text.copyWith(
    color: CustomColors.light,
  );

  static final darkBody1Text = body1Text.copyWith(
    color: CustomColors.light,
  );

  static final darkBody2Text = body2Text.copyWith(
    color: CustomColors.light,
  );

  static final darkButtonText = buttonText.copyWith(
    color: CustomColors.light,
  );

  static final darkCaptionText = captionText.copyWith(
    color: CustomColors.light,
  );
}
