import 'dart:developer';

import 'package:arte/constant/globalcall.dart';
import 'package:arte/constant/storagekey.dart';
import 'package:arte/models/usermodel.dart';
import 'package:arte/routes/route_name.dart';
import 'package:arte/services/firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final Rx<UserModel> userdata = UserModel().obs;
  final TextEditingController deliverputname = TextEditingController(),
      userEditorController = TextEditingController(),
      mobileEditorController = TextEditingController();
  @override
  void onInit() {
    getUserdata();
    super.onInit();
  }

  getUserdata() async {
    final result =
        await FireStoreService.getuserdata(uid: boxMe.read(uidF).toString());
    userdata(result);
    textDefault();
    log(userdata.value.email!);
  }

  textDefault() {
    deliverputname.text = userdata.value.deliverputname ?? "Deliver Put Name";
    userEditorController.text = userdata.value.username ?? "";
    mobileEditorController.text = userdata.value.mobile ?? "";
  }

  updateField(dynamic data) async {
    await FireStoreService.updatefielddata(data);
  }

  updatemodeldata(String? value) async {
    userdata.value.username = value!;
    update();
  }

  signout() {
    firebaseAuth.signOut();
    boxMe.remove(uidF);
    Get.offNamedUntil(signIn, (route) => false);
  }
}
