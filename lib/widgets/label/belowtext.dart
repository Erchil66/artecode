import 'package:arte/constant/colors.dart';
import 'package:arte/constant/svg_images.dart';
import 'package:arte/widgets/label/text_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class Belowtext extends StatelessWidget {
  final Function()? gmailpress, facebookpress, goto;
  final String? titlelabel, firsttext, secondtext;

  const Belowtext(
      {super.key,
      this.gmailpress,
      this.facebookpress,
      this.goto,
      this.titlelabel,
      this.firsttext,
      this.secondtext});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 1,
                    color: colorGrey,
                  ),
                ),
                SizedBox(
                  width: 1.5.w,
                ),
                TextPoppin(
                  label: titlelabel,
                  textColor: colorGrey,
                  textSize: 12.dp,
                ),
                SizedBox(
                  width: 1.5.w,
                ),
                const Expanded(
                  child: Divider(
                    thickness: 1,
                    color: colorGrey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.5.h,
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: gmailpress,
                  child: SizedBox(
                    child: Column(
                      children: [
                        SvgPicture.asset(gmail),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        TextPoppin(
                          label: "Gmail",
                          textColor: colorDark,
                          textSize: 9.dp,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: facebookpress,
                  child: SizedBox(
                    child: Column(
                      children: [
                        Image.asset(facebook),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        TextPoppin(
                          label: "Facebook",
                          textColor: colorDark,
                          textSize: 9.dp,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 3.5.h,
          ),
          GestureDetector(
            onTap: goto,
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: firsttext,
                  style: GoogleFonts.poppins(
                    fontSize: 12.dp,
                    color: colorDark,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: secondtext,
                  style: GoogleFonts.poppins(
                    fontSize: 12.dp,
                    color: colorOrange,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
