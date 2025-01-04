import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/main_colors.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onbordingBG,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                width: 70,
                height: 70,
                child: Image.asset("assets/images/leaves.png")),
            Text(
              "GO FOR".tr,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 55),
            ),
            Text(
              "BETTER".tr,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                  fontSize: 55),
            ),
            Text(
              "HEALTH".tr,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                  fontSize: 55),
            ),
            Text(
              "WITH".tr,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 55),
            ),
            const Text(
              "DIABEDUC !",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 55),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 110,
                    height: 110,
                    child: Image.asset("assets/images/text.png")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset("assets/images/docotor_1.png")),
                    TextButton(
                      onPressed: () {
                        Get.offAndToNamed("/");
                      },
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                            AppColors.kPrimary2,
                          ),
                          overlayColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  const Color.fromARGB(255, 136, 125, 125)
                                      .withOpacity(0.1)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ))),
                      child: SizedBox(
                          width: 100,
                          child: Image.asset("assets/images/image_button.png")),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
