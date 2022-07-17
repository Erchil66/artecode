import 'package:arte/constant/colors.dart';
import 'package:arte/controllers/boardcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoardView extends GetView<BoardController> {
  const BoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
