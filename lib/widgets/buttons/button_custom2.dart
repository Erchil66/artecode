import 'package:arte/constant/colors.dart';
import 'package:arte/constant/svg_images.dart';
import 'package:arte/widgets/label/text_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Buttonpress extends StatelessWidget {
  final String? buttonTittle;
  final bool? svgshow;
  final Function()? press;

  const Buttonpress({super.key, this.buttonTittle, this.svgshow, this.press});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.6.h,
      width: 295,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: colorOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: TextPoppin(
                    label: buttonTittle,
                    textSize: 16.dp,
                    textColor: colorWhite,
                    lines: 1,
                    medium: true,
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset(
                      arrowRight,
                      width: 6.5.w,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
