import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plannero/app/constants/language.dart';
import 'package:plannero/app/modules/categories/controllers/categories_controller.dart';
import 'package:plannero/app/modules/settings/controllers/settings_controller.dart';
import 'package:plannero/generated/locales.g.dart';

abstract class CustomDialogs {
  static void permission() {
    Get.defaultDialog(
      title: 'Allow Notifications',
      middleText: 'Plannero would like to send you notifications',
      barrierDismissible: false,
      radius: 8.0,
      actions: <Widget>[
        OutlinedButton(
          onPressed: () => Get.back(),
          child: const Text('Dont\'t allow'),
        ),
        ElevatedButton(
            onPressed: () => AwesomeNotifications()
                .requestPermissionToSendNotifications()
                .then((_) => Get.back()),
            child: const Text('Allow')),
      ],
    );
  }

  static Future<bool> closeApp() async {
    final bool? isCloseApp = await Get.defaultDialog<bool?>(
      title: 'Plannero',
      middleText: 'Do you really want to exit the app?',
      barrierDismissible: true,
      radius: 8.0,
      actions: <Widget>[
        OutlinedButton(
          onPressed: () => Get.back(result: false),
          child: const Text('No'),
        ),
        ElevatedButton(
          onPressed: () => Get.back(result: true),
          child: const Text('Yes'),
        ),
      ],
    );

    return isCloseApp ?? false;
  }

  static void deleteCategory(
    CategoriesController controller,
    int id,
  ) async {
    Get.defaultDialog<bool?>(
      title: 'Are you sure?',
      middleText: 'All tasks in this category will be lost',
      barrierDismissible: true,
      radius: 8.0,
      actions: <Widget>[
        OutlinedButton(
          onPressed: () => Get.back(),
          child: const Text('No'),
        ),
        ElevatedButton(
          onPressed: () => controller.delete(id),
          child: const Text('Yes'),
        ),
      ],
    );
  }

  static void language(SettingsController controller) {
    Get.defaultDialog(
      title: LocaleKeys.settings_page_language.tr,
      content: Column(
        children: <Widget>[
          ListTile(
            leading: Radio<String>(
              value: Language.ENGLISH,
              groupValue: controller.language,
              onChanged: controller.changeLanguage,
            ),
            title: const Text('English'),
            onTap: () => controller.changeLanguage(Language.ENGLISH),
          ),
          ListTile(
            leading: Radio<String>(
              value: Language.TURKISH,
              groupValue: controller.language,
              onChanged: controller.changeLanguage,
            ),
            title: const Text('Türkçe'),
            onTap: () => controller.changeLanguage(Language.TURKISH),
          ),
        ],
      ),
      barrierDismissible: true,
      radius: 8.0,
      actions: <Widget>[
        OutlinedButton(
          onPressed: () => Get.back(),
          child: const Text('Dont\'t allow'),
        ),
        ElevatedButton(
          onPressed: () => AwesomeNotifications()
              .requestPermissionToSendNotifications()
              .then((_) => Get.back()),
          child: const Text('Allow'),
        ),
      ],
    );
  }
}
