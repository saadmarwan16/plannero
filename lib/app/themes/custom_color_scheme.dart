import 'package:flutter/material.dart';
import 'package:plannero/app/constants/custom_colors.dart';

abstract class CustomColorScheme {
  static ColorScheme get lightTheme {
    return const ColorScheme.light(
      primary: CustomColors.primary,
      primaryVariant: CustomColors.primaryVariant,
      secondary: CustomColors.secondary,
      secondaryVariant: CustomColors.secondaryVariant,
      surface: CustomColors.surfaceLight,
      background: CustomColors.light,
      error: CustomColors.errorLight,
      onPrimary: CustomColors.light,
      onSecondary: CustomColors.light,
      onSurface: CustomColors.dark,
      onBackground: CustomColors.dark,
      onError: CustomColors.light,
    );
  }

  static ColorScheme get darkTheme {
    return const ColorScheme.dark(
      primary: CustomColors.primary,
      primaryVariant: CustomColors.primaryVariant,
      secondary: CustomColors.secondary,
      secondaryVariant: CustomColors.secondaryVariant,
      surface: CustomColors.surfaceDark,
      background: CustomColors.dark,
      error: CustomColors.errorDark,
      onPrimary: CustomColors.light,
      onSecondary: CustomColors.light,
      onSurface: CustomColors.light,
      onBackground: CustomColors.light,
      onError: CustomColors.dark,
    );
  }
}
