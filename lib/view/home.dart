import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/home.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/theme/main_colors.dart';

import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            child: Image.asset(currentUser.image!),
          ),
        ),
        title: Text(
          "${currentUser.fname} ${currentUser.lname!}",
          style: const TextStyle(color: Colors.black),
        ),
        bottom: PreferredSize(
            preferredSize: const Size(0, 0),
            child: Container(
              color: Colors.black,
              height: 1,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed("/Settings");
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Explore".tr,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(color: AppColors.kPrimary2),
              child: Row(
                children: [
                  SizedBox(
                    child: Image.asset("assets/images/image5.png"),
                  ),
                  Text(
                    'Learn with\n us how to take\n care of you and\n your\n diabetes'.tr,
                    style: const TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: homeController.buttons.map((category) {
                return Container(
                  margin: const EdgeInsets.all(15),
                  child: TextButton(
                    onPressed: () {
                      homeController.redirect(category.isLink, category.link);
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.kPrimary2),
                      overlayColor: MaterialStateColor.resolveWith((states) =>
                          const Color.fromARGB(255, 136, 125, 125)
                              .withOpacity(0.1)),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 191, 191, 194)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                    ),
                    child: Column(
                      children: [
                        Text(
                          category.name,
                          style: const TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: category.width,
                          child: Image.asset(category.image),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
