import 'package:arte/constant/colors.dart';

import 'package:arte/controllers/feedcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedView extends GetView<FeedController> {
  const FeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorOrange,
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
