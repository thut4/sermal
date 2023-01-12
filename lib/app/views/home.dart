import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mgy4u/app/views/foods_pages/food_page.dart';
// import 'bottom_navigation/dashboard_controller.dart';
import 'setting.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          'MGY4U',
          style: TextStyle(
              color: Color.fromARGB(255, 22, 137, 195),
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: FoodPage(),
    );
  }
}
