import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../functions/functions.dart';
import '../theme/main_colors.dart';

class SettingsController extends GetxController {
  String localeValue = MainFunctions.sharredPrefs!.getString("codeLang") ??
      Get.deviceLocale!.languageCode;

  void setLanguage() {
    Get.defaultDialog(
        title: "language".tr,
        content: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextButton(
                onPressed: () {
                  localeValue = "fr";
                  Get.updateLocale(const Locale("fr"));
                  MainFunctions.sharredPrefs!
                      .setString("codeLang", localeValue);
                  Get.back();
                },
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      AppColors.kPrimary2,
                    ),
                    textStyle: MaterialStateProperty.resolveWith((states) {
                      Color textColor = states.contains(MaterialState.disabled)
                          ? AppColors.kPrimary2
                          : AppColors.kLine;
                      return TextStyle(fontSize: 18, color: textColor);
                    }),
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => AppColors.kPrimary2.withOpacity(0.2)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                        side: const BorderSide(
                          color: AppColors.kPrimary2,
                        )))),
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Container(
                    height: 35,
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: Text(
                      "francais".tr,
                      style: const TextStyle(
                          color: AppColors.kPrimary2,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextButton(
                onPressed: () {
                  localeValue = "en";
                  Get.updateLocale(const Locale("en"));
                  MainFunctions.sharredPrefs!
                      .setString("codeLang", localeValue);
                  Get.back();
                },
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      AppColors.kPrimary2,
                    ),
                    textStyle: MaterialStateProperty.resolveWith((states) {
                      Color textColor = states.contains(MaterialState.disabled)
                          ? AppColors.kPrimary2
                          : AppColors.kLine;
                      return TextStyle(fontSize: 18, color: textColor);
                    }),
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => AppColors.kPrimary2.withOpacity(0.2)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                        side: const BorderSide(
                          color: AppColors.kPrimary2,
                        )))),
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Container(
                    height: 35,
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: Text(
                      "english".tr,
                      style: const TextStyle(
                          color: AppColors.kPrimary2,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ));

    update();
  }
}
