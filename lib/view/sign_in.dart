import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/sign_in.dart';
import '../theme/main_colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.find();

    const String image1 = "assets/images/1.png";
    const String image2 = "assets/images/2.png";
    const String image3 = "assets/images/3.png";
    const String image4 = "assets/images/4.png";
    return Scaffold(
        backgroundColor: AppColors.bg,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 25),
            Center(
              child: Text(
                'Welcome'.tr,
                style: const TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            Center(
              child: Text(
                "please fill the information below".tr,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 100.0,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/sign_in.png',
              ),
            ),
            const SizedBox(height: 10.0),
            const SizedBox(height: 25.0),
            SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: signInController.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (fname) {
                        signInController.firstName = fname;
                      },
                      onChanged: (fname) {
                        signInController.firstName = fname.trim();
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "fname".tr;
                        }
                        return null;
                      },
                      // initialValue: signUpController.userName,
                      decoration: InputDecoration(
                        label: Text(
                          "First Name".tr,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                        hintText: "First Name".tr,
                        errorMaxLines: 2,
                        prefixIcon: const Icon(
                          Icons.person_2_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.kLine),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.kLine),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.kError),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: AppColors.bg),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (lname) {
                        signInController.familyName = lname;
                      },
                      onChanged: (lname) {
                        signInController.familyName = lname.trim();
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "lname".tr;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: Text(
                          "last Name".tr,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                        hintText: "last Name".tr,
                        errorMaxLines: 2,
                        prefixIcon: const Icon(
                          Icons.person_2_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.kLine),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.kLine),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.kError),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "enterbirthDate".tr;
                        }
                        return null;
                      },
                      controller: signInController.dateinput,
                      decoration: InputDecoration(
                        label: Text(
                          "Birthday date".tr,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                        hintText: "...../..../.......",
                        errorMaxLines: 2,
                        prefixIcon: const Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                          size: 35,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.kLine),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.kLine),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.kError),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                      readOnly:
                          true, //set it true, so that user will not able to edit text
                      onTap: () async {
                        signInController.pickedDate(context);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                        value: signInController.selectedValue,
                        hint: Text("Age".tr,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey)),
                        focusColor: AppColors.kPrimary2,
                        decoration: InputDecoration(
                          hintText: "Age",
                          errorMaxLines: 2,
                          prefixIcon: const Icon(
                            Icons.account_circle_rounded,
                            color: Colors.black,
                            size: 35,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: AppColors.kLine),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: AppColors.kLine),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: AppColors.kError),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                        isExpanded: true,
                        onChanged: (value) {
                          signInController.selectedValue = value;
                          setState(() {});
                        },
                        onSaved: (value) {
                          signInController.selectedValue = value;
                          setState(() {});
                        },
                        validator: (value) =>
                            value == null ? 'SelectCate'.tr : null,
                        items: signInController.locations.map((category) {
                          return DropdownMenuItem(
                            value: category,
                            child: Text(category),
                          );
                        }).toList()),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Choissi ton Avatar".tr,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    GetBuilder<SignInController>(
                      builder: (contx) => signInController.selectedValue !=
                              "moins de 8 ans".tr
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GetBuilder<SignInController>(
                                  builder: (contx) => TextButton(
                                    onPressed: () {
                                      signInController.selectButton(0);
                                      signInController.image = image1;
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            signInController.selectedIndex == 0
                                                ? Colors.green
                                                : AppColors.bg,
                                        shape: const CircleBorder(
                                            side: BorderSide()),
                                        side: const BorderSide(
                                            style: BorderStyle.solid)),
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(image1),
                                      )),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                GetBuilder<SignInController>(
                                  builder: (contx) => TextButton(
                                    onPressed: () {
                                      signInController.selectButton(1);
                                      signInController.image = image2;
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            signInController.selectedIndex == 1
                                                ? Colors.green
                                                : AppColors.bg,
                                        shape: const CircleBorder(
                                            side: BorderSide()),
                                        side: const BorderSide(
                                            style: BorderStyle.solid)),
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(image2),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GetBuilder<SignInController>(
                                  builder: (contx) => TextButton(
                                    onPressed: () {
                                      signInController.selectButton(0);
                                      signInController.image = image4;
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            signInController.selectedIndex == 0
                                                ? Colors.green
                                                : AppColors.bg,
                                        shape: const CircleBorder(
                                            side: BorderSide()),
                                        side: const BorderSide(
                                            style: BorderStyle.solid)),
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(image4),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                GetBuilder<SignInController>(
                                  builder: (contx) => TextButton(
                                    onPressed: () {
                                      signInController.selectButton(1);
                                      signInController.image = image3;
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            signInController.selectedIndex == 1
                                                ? Colors.green
                                                : AppColors.bg,
                                        shape: const CircleBorder(
                                            side: BorderSide()),
                                        side: const BorderSide(
                                            style: BorderStyle.solid)),
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(image3),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: TextButton(
                        onPressed: () {
                          if (signInController.formKey.currentState!
                                  .validate() &&
                              signInController.selectedIndex != -1) {
                            signInController.formKey.currentState!.save();
                            signInController.submit();
                          }
                        },
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(
                              AppColors.kPrimary2,
                            ),
                            overlayColor: MaterialStateColor.resolveWith(
                                (states) =>
                                    const Color.fromARGB(255, 136, 125, 125)
                                        .withOpacity(0.1)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
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
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
