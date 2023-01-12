import 'package:get/get.dart';
import 'package:mgy4u/app/data/model/shops_info.dart';
import 'package:mgy4u/app/services/firestore.dart';

class ProductController extends GetxController {
  final product = <Shop>[].obs;

  @override
  void onReady() {
    // product.bindStream(FirestoreDb().getAllShops());
    super.onReady();
  }
}
