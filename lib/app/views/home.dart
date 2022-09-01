import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mgy4u/app/views/body_page/buildCategories.dart';
import 'bottom_navigation/bottom_nav.dart';
import 'bottom_navigation/dashboard_controller.dart';
import 'setting.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Get.to(() => Setting());
              },
              icon: Icon(Icons.settings),
              color: Colors.deepOrange,
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            BuildCategories(),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Image.asset("assets/banner.jpg")),
          ],
        ),
      );
    });
  }
}
