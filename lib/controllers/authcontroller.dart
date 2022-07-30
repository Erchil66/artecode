import 'dart:developer';

import 'package:arte/constant/globalcall.dart';
import 'package:arte/constant/storagekey.dart';
import 'package:arte/routes/route_name.dart';
import 'package:arte/services/firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Authcontroller extends GetxController {
  final TextEditingController emailController = TextEditingController(),
      passwordcontroller = TextEditingController(),
      confirmpasswordcontroller = TextEditingController(),
      usernamecontroller = TextEditingController(),
      mobilenumbercontroller = TextEditingController();

  //Sign up
  addusers() async {
    final data = {
      "uid": "",
      "email": emailController.text,
      "password": passwordcontroller.text,
      "username": usernamecontroller.text,
      "mobile": mobilenumbercontroller.text
    };

    try {
      final signup = await firebaseAuth.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordcontroller.text);
      await FireStoreService.adduser(data: data, uid: signup.user!.uid);
      Get.offNamedUntil(mainboard, (route) => false);
    } on FirebaseException catch (error) {
      log(error.message!);
    }
  }

  //Sign in
  signinuser() async {
    try {
      final result = await firebaseAuth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordcontroller.text);
      boxMe.write(uidF, result.user!.uid);
      Get.offNamedUntil(mainboard, (route) => false);
    } on FirebaseException catch (error) {
      log(error.message!);
    }
  }
}
