import 'package:get/get.dart';
import 'package:mgy4u/app/data/model/info.dart';

import '../services/fire_store.dart';
//import 'package:url_launcher/url_launcher_string.dart';

class Controller extends GetxController {
  final productList = <Info>[].obs;
  // RxList<dynamic> pages = [].obs;
  // RxList<dynamic> items = [].obs;
  @override
  void onInit() {
    productList.bindStream(FireStoreDb().getAllProducts());
    // pageInfo();
    super.onInit();
  }

  // pageInfo() {
  //   pages.add(Info(
  //       pageUrl:
  //           "https://www.facebook.com/Nyein-food-and-beverage-103693065094644",
  //       pageId: "fb://page/103693065094644",
  //       name: "Nyein",
  //       type: "Snacks",
  //       image: "assets/nyein.jpg",
  //       detailImage: "assets/bubbletea.png",
  //       phone: "09972233202",
  //       desc: "",
  //       location: "Strand Road"));
  //   pages.add(Info(
  //       pageUrl: "https://www.facebook.com/ArthurBarMyanmar",
  //       pageId: "fb://page/335906730437975",
  //       name: "Authur",
  //       type: "Nightlife",
  //       image: "assets/authur.jpg",
  //       detailImage: "assets/authur_banner.jpg",
  //       phone: "09777400008",
  //       desc: "",
  //       location: "Kanthar 3rd street,"));
  //   pages.add(Info(
  //       pageUrl: "https://www.facebook.com/Thus-Tasty-286942765361028",
  //       pageId: "fb://page/286942765361028",
  //       name: "Thu\'s Tasty",
  //       type: "Thai-Foods",
  //       image: "assets/thu.jpg",
  //       detailImage: "assets/smoothie.png",
  //       phone: "09972233202",
  //       location: "Strand Road,ShweNyaung(2) Quarter",
  //       desc: ""));
  //   pages.add(Info(
  //       pageUrl: "https://www.facebook.com/Delicious.Pizza.Magway",
  //       pageId: "fb://page/1649085321788170",
  //       name: "Immortal",
  //       type: "Pizza",
  //       image: "assets/immortal.jpg",
  //       detailImage: "assets/bubbletea.png",
  //       location: "State1,Road",
  //       phone: "09952005039",
  //       desc: ""));

  //   pages.add(Info(
  //       pageUrl: "https://www.facebook.com/PIZZAFAMILYMAGWAY",
  //       pageId: "fb://page/103995912417581",
  //       name: "Pizza Family",
  //       type: "Pizza",
  //       image: "assets/pizza_family.jpg",
  //       detailImage: "assets/bubbletea.png",
  //       location: "Pyidawthar Road,YanWay Quater",
  //       phone: "09882881183",
  //       desc: ""));
  //   pages.add(Info(
  //       pageUrl: "https://www.facebook.com/theorymagway",
  //       pageId: "fb://page/100063858883271",
  //       name: "Theory",
  //       type: "Burger",
  //       image: "assets/theory.jpg",
  //       detailImage: "assets/smoothie.png",
  //       phone: "09779797056",
  //       location: "Strand Road,ShweNyaung(2) Quarter",
  //       desc: ""));
  //   pages.add(Info(
  //       pageUrl: "https://www.facebook.com/ParisCafeteria2022",
  //       pageId: "fb://page/100083247461263",
  //       name: "Paris Café & Bistro",
  //       type: "Café & Bistro",
  //       image: "assets/paris.jpg",
  //       detailImage: "assets/smoothie.png",
  //       phone: "09965348030",
  //       location: "Taungdwin Road,\nNear Magway University",
  //       desc: ""));
  //   pages.refresh();
  // }
}
