import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../theme/main_colors.dart';

class MainFunctions {
  static SharedPreferences? sharredPrefs;

  static waitingBar(String text, Color? color) {
    Get.defaultDialog(
        title: text,
        content: const CircularProgressIndicator(
          color: AppColors.kSecondary,
        ));
  }

  static successSnackBar(String text) {
    if (!Get.isSnackbarOpen) {
      Get.rawSnackbar(
          isDismissible: true,
          duration: const Duration(seconds: 3),
          messageText: Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 98, 216, 102),
          showProgressIndicator: true,
          snackPosition: SnackPosition.BOTTOM,
          icon: const Icon(
            Icons.done,
            color: Colors.white,
          ));
    }
  }

  static somethingWentWrongSnackBar([String? errorText]) {
    if (!Get.isSnackbarOpen) {
      Get.rawSnackbar(
          duration: const Duration(seconds: 5),
          messageText: Text(
            errorText ?? "هناك خطأ ما",
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          showProgressIndicator: true,
          snackPosition: SnackPosition.TOP,
          icon: const Icon(
            Icons.report_problem,
            color: Colors.red,
          ));
    }
  }

   static Future<void> pop({bool? animated}) async {
    await SystemChannels.platform
        .invokeMethod<void>('SystemNavigator.pop', animated);
  }
}
