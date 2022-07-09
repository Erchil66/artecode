import 'package:arte/constant/colors.dart';
import 'package:arte/widgets/label/text_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardCard extends StatelessWidget {
  final String? headTitle, description, image;

  const OnboardCard({super.key, this.headTitle, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 2.2.h,
            ),
            TextPoppin(
              label: headTitle,
              lines: 1,
              textColor: colorDark,
              textSize: 18.5.dp,
              align: TextAlign.center,
              bold: true,
            ),
            SizedBox(
              height: 3.2.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextPoppin(
                label: description,
                lines: 10,
                textColor: colorDark,
                textSize: 12.5.dp,
                align: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 4.2.h,
            ),
            SizedBox(
              height: 50.h,
              // width: 50.w,
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
