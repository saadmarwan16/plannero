import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plannero/app/constants/custom_colors.dart';

abstract class CustomMessages {
  static void closeCurrentMessage() {
    if (Get.isSnackbarOpen) {
      Get.closeCurrentSnackbar();
    }
  }

  static void toast(String title, String message) {
    closeCurrentMessage();
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.only(bottom: 96.0),
      backgroundColor: CustomColors.primary,
      backgroundGradient: const LinearGradient(
        colors: <Color>[CustomColors.primary, CustomColors.secondary],
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      borderRadius: 8.0,
      isDismissible: false,
      animationDuration: const Duration(milliseconds: 250),
      maxWidth: 240.0,
    );
  }

  static void snackBar(String title, String message) {
    closeCurrentMessage();
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.only(bottom: 56.0, left: 16.0, right: 16.0),
      backgroundColor: CustomColors.primary,
      backgroundGradient: const LinearGradient(
        colors: <Color>[CustomColors.primary, CustomColors.secondary],
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      borderRadius: 8.0,
      isDismissible: false,
      animationDuration: const Duration(milliseconds: 250),
      mainButton: TextButton(onPressed: () => Get.closeCurrentSnackbar(), child: const Text('Close')),
    );
  }
}
