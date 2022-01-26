import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:plannero/app/core/views/page_navigator.dart';
import 'package:plannero/app/routes/app_pages.dart';
import 'package:plannero/app/themes/custom_theme.dart';
import 'package:plannero/generated/locales.g.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    this.savedThemeMode,
    this.appLanguage,
    required this.name,
  }) : super(key: key);

  final AdaptiveThemeMode? savedThemeMode;
  final Locale? appLanguage;
  final String name;

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: CustomTheme.lightTheme,
      dark: CustomTheme.darkTheme,
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) {
        return GetMaterialApp(
          title: name,
          theme: theme,
          darkTheme: darkTheme,
          home: const PageNavigator(),
          getPages: AppPages.routes,
          locale: appLanguage ?? Get.deviceLocale ?? const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),
          translationsKeys: AppTranslation.translations,
        );
      },
    );
  }
}
