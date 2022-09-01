import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mgy4u/app/controllers/fb_controller.dart';

import '../beverage_pages/drink_page.dart';
import '../foods_pages/food_page.dart';
import '../setting.dart';
import 'category_controller.dart';

class BuildCategories extends StatefulWidget {
  const BuildCategories({Key? key}) : super(key: key);

  @override
  State<BuildCategories> createState() => _BuildCategoriesState();
}

class _BuildCategoriesState extends State<BuildCategories> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoriesController>(builder: (controller) {
      return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
              height: 40,
              child: ListView.builder(
                  itemCount: controller.list.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.selectedIndex = index.obs;
                          if (controller.selectedIndex <= 3) {
                            Get.to(() => FoodPage());
                          } else {
                            Get.to(() => DrinkPage());
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Text(
                              controller.list[index].name,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: controller.selectedIndex == index
                                    ? Colors.deepOrangeAccent
                                    : Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              width: 30,
                              height: 3,
                              color: controller.selectedIndex == index
                                  ? Colors.black
                                  : Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    );
                  })));
    });
  }
}
