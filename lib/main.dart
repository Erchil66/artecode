import 'package:arte/constant/globalcall.dart';
import 'package:arte/constant/storagekey.dart';
import 'package:arte/routes/route_list.dart';
import 'package:arte/routes/route_name.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: ((p0, p1, p2) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: boxMe.read(uidF) != null ? mainboard : onboard,
            getPages: Routes.list,
          )),
    );
  }
}
