import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mgy4u/app/controllers/fb_controller.dart';
import '../controllers/app_controller.dart';
import '../controllers/setting_controller.dart';
import '../views/body_page/category_controller.dart';
import '../views/bottom_navigation/dashboard_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(FbController(imageCache));
    Get.put(DashboardController());
    Get.put(CategoriesController());
    //Get.put(SettingsController());
    //Get.put(AppController());
  }
}
