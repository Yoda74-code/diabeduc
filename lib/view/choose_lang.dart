import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/choose_language.dart';
import 'package:get/get.dart';

import '../theme/main_colors.dart';
import 'widgets/radio_item.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    ChooseLanguageController chooseLanguageController = Get.find();
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          physics: const BouncingScrollPhysics(),
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                const Positioned(
                  bottom: 30,
                  child: Text(
                    'DIABEDUC',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35.0),
            Center(
              child: Text(
                'language'.tr,
                style: const TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            GetBuilder<ChooseLanguageController>(
              builder: (contx) => ListView.builder(
                shrinkWrap: true,
                itemCount: chooseLanguageController.sampleData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                            Colors.black,
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            AppColors.kPrimary2,
                          ),
                          overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white.withOpacity(0.1),
                          ),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(150),
                                  side: const BorderSide(
                                    color: AppColors.kPrimary2,
                                  )))),
                      onPressed: () {
                        chooseLanguageController.updateSelectedLanguage(
                          chooseLanguageController
                              .sampleData[index].languageCode,
                        );
                      },
                      child: RadioItem(
                        chooseLanguageController.sampleData[index],
                        isSelected: chooseLanguageController
                            .sampleData[index].isSelected,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'your language preference can be'.tr,
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'changed at any time in settings'.tr,
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: TextButton(
                onPressed: () {
                  chooseLanguageController
                      .setLanguage(chooseLanguageController.selectedLanguage);
                },
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      AppColors.kPrimary2,
                    ),
                    overlayColor: MaterialStateColor.resolveWith((states) =>
                        const Color.fromARGB(255, 136, 125, 125)
                            .withOpacity(0.1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ))),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  color: Colors.transparent,
                  child: Container(
                    height: 35,
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}