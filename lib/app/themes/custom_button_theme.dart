import 'package:flutter/material.dart';
import 'package:plannero/app/constants/custom_colors.dart';

abstract class CustomButtonTheme {
  static ElevatedButtonThemeData get elevated {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: CustomColors.primary,
        elevation: 2.0,
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData get outlinedLightTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: CustomColors.dark.withOpacity(0.6),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        side: BorderSide(color: CustomColors.dark.withOpacity(0.6)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData get outlinedDarkTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: CustomColors.light.withOpacity(0.6),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        side: BorderSide(color: CustomColors.light.withOpacity(0.6)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
