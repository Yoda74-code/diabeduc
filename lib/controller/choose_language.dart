import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../functions/functions.dart';
import '../model/radio.dart';

class ChooseLanguageController extends GetxController {
  List<RadioModel> sampleData = [
    RadioModel(false, 'A', 'French'.tr, "assets/images/france.png", 'fr'),
    RadioModel(false, 'B', 'English'.tr, "assets/images/ukflag.png", 'en')
  ];

  String selectedLanguage = "";
  void updateSelectedLanguage(String newLanguage) {
    selectedLanguage = newLanguage;
    for (var item in sampleData) {
      item.isSelected = item.languageCode == newLanguage;
    }
    update();
  }

  String localeValue = MainFunctions.sharredPrefs!.getString("codeLang") ??
      Get.deviceLocale!.languageCode;

  void setLanguage(selectedLanguage) {
    if (selectedLanguage == "") {
      MainFunctions.somethingWentWrongSnackBar("choose Language Please");
    } else {
      String localeValue = selectedLanguage;
      Get.updateLocale(Locale(localeValue));
      MainFunctions.sharredPrefs!.setString("codeLang", localeValue);
      Get.offNamed("/SignIn");
    }
    update();
  }
}
