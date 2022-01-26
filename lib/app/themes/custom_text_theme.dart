import 'package:flutter/material.dart';
import 'package:plannero/app/constants/custom_text_styles.dart';

abstract class CustomTextTheme {
  static TextTheme get light {
    return const TextTheme(
      headline1: CustomTextStyles.headline1Text,
      headline2: CustomTextStyles.headline2Text,
      headline3: CustomTextStyles.headline3Text,
      headline4: CustomTextStyles.headline4Text,
      bodyText1: CustomTextStyles.body1Text,
      bodyText2: CustomTextStyles.body2Text,
      button: CustomTextStyles.buttonText,
      caption: CustomTextStyles.captionText,
    );
  }

  static TextTheme get dark {
    return TextTheme(
    headline1: CustomTextStyles.darkHeadline1Text,
    headline2: CustomTextStyles.darkHeadline2Text,
    headline3: CustomTextStyles.darkHeadline3Text,
    headline4: CustomTextStyles.darkHeadline4Text,
    bodyText1: CustomTextStyles.darkBody1Text,
    bodyText2: CustomTextStyles.darkBody2Text,
    button: CustomTextStyles.darkButtonText,
    caption: CustomTextStyles.darkCaptionText,
  );
  }
}
