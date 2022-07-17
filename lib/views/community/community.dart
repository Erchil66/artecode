import 'package:arte/constant/colors.dart';

import 'package:arte/controllers/communitycontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunityView extends GetView<CommunityController> {
  const CommunityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorDark,
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
