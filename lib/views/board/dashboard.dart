import 'package:arte/constant/colors.dart';
import 'package:arte/constant/svg_images.dart';
import 'package:arte/controllers/boardcontroller.dart';
import 'package:arte/widgets/appbar/appbar_dash_board.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoardView extends GetView<BoardController> {
  const BoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: colorWhite,
        appBar: AppbarDash(
          urlimage: controller.profile.userdata.value.imageUrl ?? "",
          bellFunction: () {},
          cartFunction: () {},
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
