import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mgy4u/app/data/model/info.dart';

class FireStoreDb {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Stream<List<Info>> getAllProducts() {
    // return _firebaseFirestore.collection('shops').snapshots().map((snapshot) =>
    //     snapshot.docs.map((doc) => Info.fromSnapshot(doc)).toList());
    return _firebaseFirestore
        .collection('products')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Info.fromSnapshot(doc)).toList();
    });
  }
}
