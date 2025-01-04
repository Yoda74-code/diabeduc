import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PayMiddleware extends GetMiddleware {
  @override
  int? get priority => 0;
  @override
  RouteSettings? redirect(String? route) {
    return null;
  
    // if (isPay) {
    //   //  MainFunctions.getcurrentUserInfos();
    //   // MainFunctions.loadTripsDriversData();
    //   return const RouteSettings(name: "/Bording");
    // } else {
    //   return null;
    // }
  }
}
