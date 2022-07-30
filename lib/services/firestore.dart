import 'package:arte/constant/globalcall.dart';
import 'package:arte/constant/storagekey.dart';
import 'package:arte/models/usermodel.dart';
import 'package:get/get.dart';

class FireStoreService {
  //register adduser data
  static adduser({dynamic data, String? uid}) async {
    return await CollectionRef.collection(path: "users")
        .doc(uid!)
        .set(data)
        .then(
          (value) => CollectionRef.collection(path: "users")
              .doc(uid)
              .update({"uid": uid}),
        );
  }

  //get user data
  static Future<UserModel> getuserdata({String? uid}) async {
    final response =
        await CollectionRef.collection(path: "users").doc(uid!).get();
    final mapdata = response.data() as Map<String, dynamic>;
    return UserModel.fromJson(mapdata);
  }

  //update user data by field
  static updatefielddata(dynamic data) async {
    return await CollectionRef.collection(path: "users")
        .doc(boxMe.read(uidF))
        .update(data);
  }
}
