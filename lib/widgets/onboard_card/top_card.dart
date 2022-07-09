import 'package:arte/constant/colors.dart';
import 'package:arte/widgets/buttons/button_custom.dart';
import 'package:arte/widgets/label/text_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class TopCardOnboard extends StatelessWidget implements PreferredSize {
  final bool? isLastpage;
  final Function()? skip;
  final Function()? getStarted;

  const TopCardOnboard(
      {super.key, this.isLastpage, this.skip, this.getStarted});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: 375,
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              isLastpage == true
                  ? ButttonCustom(
                      press: getStarted,
                      label: "Get Started",
                      textSize: 12.dp,
                      textColor: colorWhite,
                      bgColor: colorOrange,
                      height: 4.5.h,
                      width: 120,
                    )
                  : GestureDetector(
                      onTap: skip,
                      behavior: HitTestBehavior.deferToChild,
                      child: TextPoppin(
                        label: "SKIP",
                        medium: true,
                        textSize: 12.dp,
                        textColor: colorDark,
                        lines: 1,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(25.h);
}
