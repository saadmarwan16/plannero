import 'package:flutter/material.dart';
import 'package:plannero/app/constants/custom_colors.dart';
import 'package:plannero/app/constants/custom_paddings.dart';
import 'package:plannero/app/constants/custom_text_styles.dart';
import 'package:plannero/app/themes/custom_button_theme.dart';
import 'package:plannero/app/themes/custom_color_scheme.dart';
import 'package:plannero/app/themes/custom_icon_theme.dart';
import 'package:plannero/app/themes/custom_input_decoration_theme.dart';
import 'package:plannero/app/themes/custom_text_theme.dart';

abstract class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: CustomColors.primary,
        centerTitle: true,
        iconTheme: CustomIconTheme.icon,
        actionsIconTheme: CustomIconTheme.icon,
        titleTextStyle: CustomTextStyles.darkBody1Text,
        toolbarTextStyle: CustomTextStyles.darkBody1Text,
      ),
      backgroundColor: CustomColors.surfaceLight,
      cardTheme: CardTheme(
        color: CustomColors.surfaceLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        fillColor: MaterialStateProperty.resolveWith(
          (_) => CustomColors.secondary,
        ),
        checkColor: MaterialStateProperty.resolveWith(
          (_) => CustomColors.light,
        ),
      ),
      colorScheme: CustomColorScheme.lightTheme,
      dividerTheme: DividerThemeData(
        color: CustomColors.dark.withOpacity(0.6),
        thickness: 1.0,
        space: 16.0,
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: CustomColors.primary,
      ),
      elevatedButtonTheme: CustomButtonTheme.elevated,
      iconTheme: CustomIconTheme.icon,
      inputDecorationTheme: CustomInputDecorationTheme.lightTheme,
      // listTileTheme: ListTileThemeData(),
      outlinedButtonTheme: CustomButtonTheme.outlinedLightTheme,
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith(
          (_) => CustomColors.secondary,
        ),
      ),
      scaffoldBackgroundColor: CustomColors.light,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: CustomColors.dark.withOpacity(0.6),
          textStyle: CustomTextStyles.buttonText,
          padding: CustomPaddings.sym1612,
        ),
      ),
      textTheme: CustomTextTheme.light,
      // timePickerTheme: TimePickerThemeData(),
      // toggleButtonsTheme: ToggleButtonsThemeData(),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: CustomColors.dark,
        centerTitle: true,
        iconTheme: CustomIconTheme.icon,
        actionsIconTheme: CustomIconTheme.icon,
        titleTextStyle: CustomTextStyles.darkBody1Text,
        toolbarTextStyle: CustomTextStyles.darkBody1Text,
      ),
      backgroundColor: CustomColors.surfaceDark,
      cardTheme: CardTheme(
        color: CustomColors.surfaceDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        fillColor: MaterialStateProperty.resolveWith(
          (_) => CustomColors.secondary,
        ),
        checkColor: MaterialStateProperty.resolveWith(
          (_) => CustomColors.light,
        ),
      ),
      colorScheme: CustomColorScheme.darkTheme,
      dividerTheme: DividerThemeData(
        color: CustomColors.light.withOpacity(0.6),
        thickness: 1.0,
        space: 16.0,
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: CustomColors.primary,
      ),
      elevatedButtonTheme: CustomButtonTheme.elevated,
      iconTheme: const IconThemeData(color: CustomColors.light, size: 32.0),
      inputDecorationTheme: CustomInputDecorationTheme.darkTheme,
      // listTileTheme: ListTileThemeData(),
      outlinedButtonTheme: CustomButtonTheme.outlinedDarkTheme,
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith(
          (_) => CustomColors.secondary,
        ),
      ),
      scaffoldBackgroundColor: CustomColors.dark,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: CustomColors.light.withOpacity(0.6),
          textStyle: CustomTextStyles.buttonText,
          padding: CustomPaddings.sym1612,
        ),
      ),
      textTheme: CustomTextTheme.dark,
      // timePickerTheme: TimePickerThemeData(),
      // toggleButtonsTheme: ToggleButtonsThemeData(),
    );
  }
}
