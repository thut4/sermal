import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mgy4u/app/controllers/fb_controller.dart';
import 'package:mgy4u/app/views/foods_pages/detail_page.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FbController>(builder: (controller) {
      return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                    itemCount: controller.pages.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Get.to(() => DetailPage(controller.pages[index]));
                            });
                          },
                          child: Column(
                            children: [
                              Expanded(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: ClipOval(
                                        child: SizedBox.fromSize(
                                          size: Size.fromRadius(80),
                                          child: Image.asset(
                                            controller.pages[index].image,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(controller.pages[index].name),
                              ),
                            ],
                          ),
                        ),
                      );
                      //return Text(controller.pages[index].name);
                    }),
              ),
            ),
          ],
        ),
      );
    });
  }
}
