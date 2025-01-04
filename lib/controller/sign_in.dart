import 'package:flutter/material.dart';
import 'package:flutter_application_1/functions/functions.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  String? firstName;
  String? familyName;
  TextEditingController dateinput = TextEditingController();
  DateTime? pickedDate2;
  String? image;

  Future<void> pickedDate(BuildContext context) async {
    pickedDate2 = await showDatePicker(
        context: context,
        initialDate: DateTime(1950),
        firstDate: DateTime(1950), //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2101));

    if (pickedDate2 != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate2!);
      //formatted date output using intl package =>  2021-03-16
      dateinput.text = formattedDate;
    } else {
      ("Date is not selected");
    }
  }

  int selectedIndex = -1; // -1 means no button is selected

  void selectButton(int index) {
    selectedIndex = index;
    update();
  }

  void submit() {
    currentUser = UserModel(fname: firstName, lname: familyName, image: image);
    MainFunctions.successSnackBar("Suecces");
    Get.offAndToNamed("/Home");
  }


    var selectedValue;

  final List<String> locations = [
   "moins de 8 ans".tr,
   "plus de 9 ans".tr
  ];
}
