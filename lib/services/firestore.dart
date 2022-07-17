import 'package:arte/constant/globalcall.dart';

class FireStoreService {
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
}
