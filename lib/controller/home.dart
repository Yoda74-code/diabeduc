import 'package:flutter_application_1/model/category.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';




class HomeController extends GetxController {
  List<CategoryModel> buttons = [
    CategoryModel(
        id: 1,
        name: 'Diabet ?'.tr,
        width:130,
        image: 'assets/images/diabete-scale.png',
        link:"/Diabet",
          isLink: false),
    CategoryModel(
        id: 2,
        name: 'Treatment'.tr,
        width:120,
        image: 'assets/images/medicine.png',
        link: "/Treatment",
        isLink: false),
    CategoryModel(
        id: 3,
        name: 'Healthy eating'.tr,
        width:150,
        image: 'assets/images/alimentation-scale.png',
        link:"home_food",
         isLink: false),
    CategoryModel(
        id: 4,
        name: 'Blood sugar management'.tr,
        width:120,
        image: 'assets/images/clycemie2.png',
        link:'home_blood_sugar',
          isLink: false),
    CategoryModel(
        id: 5,
        name: 'Physical activity'.tr,
        width:135,
        image: 'assets/images/activite phisique-scale.png',
        link: "/home_PhysicalActivity",
        isLink: false),
    CategoryModel(
        id: 6,
        name: 'Chatbot'.tr,
        width:105,
        image: 'assets/images/chtbot-scale.png',
        link: "/test",
        isLink: false),
  ];
 void redirect(bool isLink, String link) {
  if (!isLink) {
    Get.toNamed(link); // Navigate to the route specified in the link parameter
  }// else {
   // launchURL(link);
   //}
}


  Future<void> launchURL(String link) async {
    await launchUrl(Uri.parse(link), mode: LaunchMode.externalApplication);
    // if (!await launchUrl(Uri.parse(link),
    //     mode: LaunchMode.externalApplication)) {
    //   MainFunctions.somethingWentWrongSnackBar();
    // }
  }
  
}
