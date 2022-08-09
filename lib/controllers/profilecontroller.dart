import 'dart:developer';
import 'dart:io';

import 'package:arte/constant/globalcall.dart';
import 'package:arte/constant/storagekey.dart';
import 'package:arte/models/usermodel.dart';
import 'package:arte/routes/route_name.dart';
import 'package:arte/services/firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:path/path.dart' as path;

class ProfileController extends GetxController {
  final Rx<UserModel> userdata = UserModel().obs;
  final TextEditingController deliverputname = TextEditingController(),
      userEditorController = TextEditingController(),
      mobileEditorController = TextEditingController();
  final ImagePicker picker = ImagePicker();
  final pathImage = "".obs;
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
    update();
  }

  textDefault() {
    deliverputname.text = userdata.value.deliverputname ?? "Deliver Put Name";
    userEditorController.text = userdata.value.username ?? "";
    mobileEditorController.text = userdata.value.mobile ?? "";
    update();
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

  pickImage() async {
    if (Platform.isAndroid) {
      final XFile? images = await picker.pickImage(source: ImageSource.gallery);
      if (images != null) {
        if (userdata.value.imageUrl != null) {
          replaceImage();
          update();
        }

        final myurl = await uploadImages(images);
        log(myurl);
        await FireStoreService.updatefielddata({"imageUrl": myurl});
        userdata.value.imageUrl = myurl;
        update();
      } else {
        // do not add
      }
    } else {
      // for ios
    }
  }

  uploadImages(XFile? pathsw) async {
    final paths = path.basename(pathsw!.path);
    final pathStorage = "${userdata.value.email}/$paths";
    final file = File(pathsw.path);
    final reference = storage.ref().child(pathStorage);
    final task = reference.putFile(file);
    final snap = await task.whenComplete(() {});
    final url = await snap.ref.getDownloadURL();
    return url;
  }

  replaceImage() async {
    final knownpath = storage.refFromURL(userdata.value.imageUrl!);
    storage.ref(knownpath.fullPath).delete();
    // userdata.value.imageUrl = "";
    update();
  }
}
