import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:arte/constant/colors.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class TextFieldCustom extends StatelessWidget {
  final TextEditingController? controller;
  final String? svgicon;
  final String? hintText;
  final TextCapitalization? capitalization;
  final bool? ispassword;
  final TextInputType? keyboardtype;
  final double? iconhieght;
  final String? Function(String?)? validator;

  const TextFieldCustom(
      {super.key,
      this.controller,
      this.svgicon,
      this.hintText,
      this.capitalization,
      this.ispassword,
      this.keyboardtype,
      this.iconhieght,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 6.6.h,
        width: 295,
        child: Container(
          decoration: BoxDecoration(
              color: colorDark, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextFormField(
              controller: controller,
              style: GoogleFonts.poppins(
                fontSize: 14.dp,
                color: colorWhite,
                fontWeight: FontWeight.w400,
              ),
              validator: validator,
              autofocus: false,
              textCapitalization:
                  capitalization ?? TextCapitalization.sentences,
              obscureText: ispassword ?? false,
              keyboardType: keyboardtype ?? TextInputType.text,
              textDirection: TextDirection.ltr,
              cursorColor: colorWhite,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintStyle: GoogleFonts.poppins(
                  fontSize: 14.dp,
                  color: colorGrey,
                  fontWeight: FontWeight.w400,
                ),
                hintText: hintText ?? "",
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                errorStyle: GoogleFonts.poppins(
                  fontSize: 9.dp,
                  color: colorGrey,
                  fontWeight: FontWeight.w400,
                ),
                // isCollapsed: true,
                isDense: true,
                fillColor: colorDark,
                prefixIcon: SizedBox(
                  height: 5.5.h,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 3.5.w,
                      ),
                      SvgPicture.asset(
                        svgicon!,
                        height: iconhieght ?? 2.5.h,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: VerticalDivider(
                          color: colorWhite,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                // filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ));
  }
}
