import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mgy4u/app/controllers/controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Controller());
  }
}
