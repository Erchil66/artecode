import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_storage/get_storage.dart';

final FirebaseFirestore firestore = FirebaseFirestore.instance;
final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
final FirebaseStorage storage = FirebaseStorage.instance;
final boxMe = GetStorage();

///
class CollectionRef {
  static CollectionReference<Map<String, dynamic>> collection({String? path}) {
    return firestore.collection(path!);
  }
}
