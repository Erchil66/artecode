import 'package:arte/constant/colors.dart';
import 'package:arte/constant/svg_images.dart';
import 'package:arte/widgets/label/text_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileData extends StatelessWidget {
  final String? username;
  final String? email;
  final Function()? editpress;
  final String? imageURL;

  final bool? edit;

  const ProfileData(
      {super.key,
      this.username,
      this.email,
      this.editpress,
      this.imageURL,
      this.edit});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: 3.h,
          ),
          SizedBox(
            height: 152,
            width: 152,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(900),
                    child: SizedBox(
                      height: 152,
                      width: 152,
                      child: imageURL == ""
                          ? Container(
                              color: colorWhite,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Image.asset(logoshop),
                              ),
                            )
                          : Image.network(
                              imageURL!,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
                edit == true
                    ? Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: editpress,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                color: colorWhite, shape: BoxShape.circle),
                            child: Center(
                              child: SvgPicture.asset(
                                editcreate,
                                height: 2.h,
                              ),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          TextPoppin(
            label: username ?? "",
            textSize: 16.dp,
            textColor: colorWhite,
            bold: true,
          ),
          TextPoppin(
            label: email ?? "",
            textSize: 10.dp,
            textColor: colorWhite,
          )
        ],
      ),
    );
  }
}
