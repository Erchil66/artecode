import 'package:arte/constant/colors.dart';
import 'package:arte/widgets/label/text_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileButtonSettings extends StatelessWidget {
  final String? boxtitle;
  final String? icon;
  final Function()? buttonpress;

  const ProfileButtonSettings(
      {super.key, this.boxtitle, this.icon, this.buttonpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonpress,
      child: Container(
          width: 375,
          height: 60,
          decoration: BoxDecoration(
              color: colorWhite,
              boxShadow: const [boxshadow],
              borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Expanded(
                  child: TextPoppin(
                    label: boxtitle,
                    textSize: 12.dp,
                    textColor: colorDark,
                    align: TextAlign.left,
                  ),
                ),
                SvgPicture.asset(
                  icon!,
                  height: 15,
                )
              ],
            ),
          ))),
    );
  }
}
