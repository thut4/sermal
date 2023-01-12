// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:mgy4u/app/data/model/shops_info.dart';

// class FirestoreDb {
//   final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

//   // Stream<List<Shop>> getAllShops() {
//   //   return _firebaseFirestore
//   //       .collection('products')
//   //       .snapshots()
//   //       .map((snapshot) {
//   //     return snapshot.docs.map((doc) => Shop.fromSnapshot(doc)).toList();
//   //   });
//   // }

//   Future<Stream<List<Shop>>>getShops()async {
//     _firebaseFirestore.collection('products').snapshots().map((query) => query.docs.map((product) => Shop.fromSnapshot(product)))
//   }
// }
