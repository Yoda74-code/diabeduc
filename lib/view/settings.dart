import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/settings.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

import '../theme/main_colors.dart';

class Settingss extends StatelessWidget {
  const Settingss({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController settingsController = Get.find();
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              navigator!.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            )),
        title: Text(
          "Settings".tr,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Account".tr,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  "${currentUser.fname} ${currentUser.lname!}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                isThreeLine: true,
                subtitle: Text("personal info".tr),
                leading: CircleAvatar(
                  radius: 35,
                  child: Image.asset(currentUser.image!),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
            Text(
              "Settings".tr,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                settingsController.setLanguage();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: Image.asset("assets/icons/globe.png"),
                  ),
                  Text(
                    "Language".tr,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: Image.asset("assets/icons/interrogation.png"),
                  ),
                  Text(
                    "help center".tr,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
