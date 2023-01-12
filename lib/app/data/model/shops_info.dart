import 'package:cloud_firestore/cloud_firestore.dart';

class Shop {
  String name;
  String pageUrl;
  String pageId;
  String type;
  String image;
  String phone;
  String address;

  Shop(
      {required this.name,
      required this.address,
      required this.phone,
      required this.type,
      required this.pageId,
      required this.pageUrl,
      required this.image});
  Shop fromSnapshot(DocumentSnapshot snap) {
    Shop product = Shop(
        name: snap['name'],
        address: snap['address'],
        phone: snap['phone'],
        type: snap['type'],
        pageId: snap['pageId'],
        pageUrl: snap['pageUrl'],
        image: snap['image']);
    return product;
  }
}
