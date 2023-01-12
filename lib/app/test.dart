import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mgy4u/app/controllers/controller.dart';
import 'package:mgy4u/app/controllers/product_controller.dart';

class Test extends StatelessWidget {
  final controller = Get.put(ProductController());
  Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: controller.product.length,
          itemBuilder: (context, index) {
            return Text(controller.product[index].name);

          }),
    );
  }
}
