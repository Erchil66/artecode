import 'package:arte/widgets/label/text_label.dart';
import 'package:flutter/material.dart';

import 'package:flutter_sizer/flutter_sizer.dart';

class ButttonCustom extends StatelessWidget {
  final Function()? press;
  final String? label;
  final double? textSize;
  final double? height;
  final double? width;
  final Color? bgColor;
  final Color? textColor;

  const ButttonCustom(
      {super.key,
      this.press,
      this.label,
      this.textSize,
      this.height,
      this.width,
      this.bgColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 30.h,
      width: width ?? 325,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(900)),
            primary: bgColor),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: TextPoppin(
              label: label,
              lines: 1,
              textSize: textSize,
              textColor: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
