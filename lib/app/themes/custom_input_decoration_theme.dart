import 'package:flutter/material.dart';
import 'package:plannero/app/constants/custom_colors.dart';

abstract class CustomInputDecorationTheme {
  static InputDecorationTheme get lightTheme {
    return InputDecorationTheme(
      iconColor: CustomColors.dark.withOpacity(0.7),
      hintStyle:
          TextStyle(color: CustomColors.dark.withOpacity(0.6), fontSize: 18.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: CustomColors.dark.withOpacity(0.6),
          width: 1.25,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: CustomColors.dark.withOpacity(0.6),
          width: 1.25,
        ),
      ),
    );
  }

  static InputDecorationTheme get darkTheme {
    return InputDecorationTheme(
      iconColor: CustomColors.light.withOpacity(0.7),
      hintStyle:
          TextStyle(color: CustomColors.light.withOpacity(0.6), fontSize: 18.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: CustomColors.light.withOpacity(0.6),
          width: 1.25,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: CustomColors.light.withOpacity(0.6),
          width: 1.25,
        ),
      ),
    );
  }
}
