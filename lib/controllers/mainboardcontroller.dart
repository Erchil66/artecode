import 'dart:developer';

import 'package:arte/constant/globalcall.dart';
import 'package:arte/constant/storagekey.dart';
import 'package:arte/views/board/dashboard.dart';
import 'package:arte/views/community/community.dart';
import 'package:arte/views/feed/feed.dart';
import 'package:arte/views/profile/userprofile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  @override
  void onInit() {
    log(boxMe.read(uidF).toString());
    super.onInit();
  }

  final selectedIndex = 0.obs;

  final List<Widget> pages = const [
    BoardView(),
    CommunityView(),
    FeedView(),
    ProfileView()
  ];
}
