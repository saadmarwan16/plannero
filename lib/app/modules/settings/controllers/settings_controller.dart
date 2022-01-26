import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:plannero/app/constants/language.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SettingsController extends GetxController {
  final SharedPreferences _preferences;
  SettingsController(this._preferences);

  final _language = Language.ENGLISH.obs;
  String get language => _language.value;

  @override
  void onReady() {
    super.onReady();
    final List<String>? appLanguage = _preferences.getStringList(Language.LANGUAGE);
    if (appLanguage != null) {
      _language.value = appLanguage[2];
    }
  }

  void changeLanguage(String? value) {
    if (value == Language.ENGLISH) {
      _language.value = value!;
      Get.updateLocale(const Locale('en', 'US'));
      _preferences.setStringList(Language.LANGUAGE, <String>['en', 'US', Language.ENGLISH]);
      Get.back();
    } else if (value == Language.TURKISH) {
      _language.value = value!;
      Get.updateLocale(const Locale('tr', 'TR'));
      _preferences.setStringList(Language.LANGUAGE, <String>['tr', 'TR', Language.TURKISH]);
      Get.back();
    }
  }

  @override
  void onClose() {}
}
