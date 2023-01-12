import 'package:cloud_firestore/cloud_firestore.dart';

class Info {
  String name;
  String pageUrl;
  String pageId;
  String type;
  String image;
  String phone;
  String address;
  String? id;
  Info({
    this.id,
    required this.pageUrl,
    required this.pageId,
    required this.name,
    required this.type,
    required this.image,
    required this.address,
    required this.phone,
  });
  static Info fromSnapshot(DocumentSnapshot snap) {
    Info productList = Info(
      id: snap['id'],
      pageUrl: snap['pageUrl'],
      pageId: snap['pageId'],
      name: snap['name'],
      type: snap['type'],
      image: snap['image'],
      address: snap['address'],
      phone: snap['phone'],
    );
    return productList;
  }
}
