import 'package:get/get.dart';

import 'package:mgy4u/app/routes/app_pages.dart';

import '../views/foods_pages/food_page.dart';
import '../views/home.dart';
import '../views/setting.dart';
import '../views/splash.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.SPLASH,
        page: () => Splah(),
        transition: Transition.fadeIn),
    GetPage(
        name: Routes.FOODS,
        page: () => FoodPage(),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: Routes.SETTINGS,
        page: () => Setting(),
        transition: Transition.fade),
    GetPage(
      name: Routes.DRINKS,
      page: () => Setting(),
    ),
    GetPage(
        name: Routes.HOME, page: () => HomePage(), transition: Transition.fade),
  ];
}
