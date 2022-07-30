import 'package:arte/constant/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAppBar extends StatelessWidget {
  final Function()? dotpress;
  final Function()? signoutpress;

  const ProfileAppBar({super.key, this.dotpress, this.signoutpress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: dotpress,
              child: SvgPicture.asset(dots),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: signoutpress,
              child: SvgPicture.asset(signout),
            ),
          )
        ],
      ),
    );
  }
}
