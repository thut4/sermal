import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../beverage_pages/drink_page.dart';

import '../foods_pages/food_page.dart';
import '../home.dart';
import '../setting.dart';
import 'dashboard_controller.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [FoodPage(), DrinkPage(), Setting()],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.redAccent,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
            _bottomNavigationBarItem(icon: Icons.home, label: 'Home Page'),
            _bottomNavigationBarItem(icon: Icons.nightlife, label: 'Foodie'),
            _bottomNavigationBarItem(icon: Icons.settings, label: 'Setting'),
          ],
        ),
      );
    });
  }

  _bottomNavigationBarItem({IconData? icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
