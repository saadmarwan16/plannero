import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import 'package:injectable/injectable.dart';
import 'package:plannero/app/constants/enums.dart';
import 'package:plannero/app/constants/language.dart';
import 'package:plannero/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';

Future<void> mainCommon(Env environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  late final String name;

  AwesomeNotifications().initialize(
    'resource://drawable/res_ic_launcher',
    [
      NotificationChannel(
        channelKey: 'scheduled_channel',
        channelName: 'Scheduled Notifications',
        channelDescription: 'For scheduling notifications',
        locked: true,
        importance: NotificationImportance.Max,
        soundSource: 'resource://raw/res_custom_notification',
      ),
    ],
  );

  switch (environment) {
    case (Env.debug):
      await configureInjection(Environment.dev);
      name = 'Plannero Dev';
      break;
    case (Env.profile):
      await configureInjection(Environment.dev);
      name = 'Plannero Profile';
      break;
    case (Env.test):
      await configureInjection(Environment.test);
      name = 'Plannero Test';
      break;
    case (Env.production):
      await configureInjection(Environment.prod);
      name = 'Plannero';
      break;
  }

  final List<String>? appLanguage = getIt<SharedPreferences>().getStringList(Language.LANGUAGE);
  if (appLanguage == null) {
    runApp(App(
    savedThemeMode: savedThemeMode,
    name: name,
  ));
  } else {
    runApp(App(
    savedThemeMode: savedThemeMode,
    appLanguage: Locale(appLanguage[0], appLanguage[1]),
    name: name,
  ));
  }
}
