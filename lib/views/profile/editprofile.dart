import 'package:arte/constant/colors.dart';
import 'package:arte/constant/svg_images.dart';
import 'package:arte/controllers/profilecontroller.dart';
import 'package:arte/widgets/buttons/button_custom2.dart';
import 'package:arte/widgets/buttons/buttonwithicon.dart';
import 'package:arte/widgets/profile/profiledata.dart';
import 'package:arte/widgets/textfields/tetxfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());

    return GetBuilder<ProfileController>(builder: (val) {
      return Scaffold(
        backgroundColor: colorWhite,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -450,
              left: -500,
              right: -500,
              child: Container(
                height: 100.h,
                width: 200.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: colorOrange),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 375,
                height: 100.h,
                child: SafeArea(
                    bottom: false,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: ButtonWithIcon(
                                iconpress: () => Get.back(),
                                icon: left,
                              ),
                            ),
                            ProfileData(
                              username: controller.userdata.value.username,
                              email: controller.userdata.value.email,
                              imageURL: "",
                              editpress: () {},
                              edit: true,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            TextFieldCustom(
                                controller: controller.userEditorController,
                                svgicon: user,
                                keyboardtype: TextInputType.text,
                                hintText: controller.userdata.value.username,
                                ispassword: false,
                                capitalization: TextCapitalization.none,
                                fillcolor: colorLightgrey,
                                showVertical: false,
                                iconColor: colorOrange,
                                textColor: colorDark,
                                onChanged: (value) {
                                  controller.updateField({"username": value});
                                  controller.updatemodeldata(value);
                                }),
                            SizedBox(
                              height: 3.h,
                            ),
                            TextFieldCustom(
                              controller: controller.mobileEditorController,
                              svgicon: mobile,
                              keyboardtype: TextInputType.text,
                              hintText: controller.userdata.value.mobile,
                              ispassword: false,
                              capitalization: TextCapitalization.none,
                              fillcolor: colorLightgrey,
                              showVertical: false,
                              iconColor: colorOrange,
                              textColor: colorDark,
                              onChanged: (value) =>
                                  controller.updateField({"mobile": value}),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            TextFieldCustom(
                              controller: controller.deliverputname,
                              svgicon: tagname,
                              keyboardtype: TextInputType.text,
                              hintText:
                                  controller.userdata.value.deliverputname,
                              ispassword: false,
                              capitalization: TextCapitalization.none,
                              fillcolor: colorLightgrey,
                              showVertical: false,
                              iconColor: colorOrange,
                              textColor: colorDark,
                              onChanged: (value) => controller
                                  .updateField({"deliverputname": value}),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Buttonpress(
                              buttonTittle: "Change Password",
                              press: () {},
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            )
          ],
        ),
      );
    });
  }
}
