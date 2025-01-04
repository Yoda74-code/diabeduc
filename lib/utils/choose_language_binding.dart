import 'package:flutter_application_1/controller/choose_language.dart';
import 'package:get/get.dart';

class ChooseLanguageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ChooseLanguageController());
  }
}
