import 'package:arte/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonWithIcon extends StatelessWidget {
  final Function()? iconpress;
  final String? icon;

  const ButtonWithIcon({super.key, this.iconpress, this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      width: 41,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 0,
          primary: colorWhite,
        ),
        onPressed: iconpress,
        child: Center(
          child: SvgPicture.asset(
            icon!,
            height: 15,
            color: colorDark,
          ),
        ),
      ),
    );
  }
}
