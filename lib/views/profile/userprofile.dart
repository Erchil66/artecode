import 'package:arte/constant/colors.dart';
import 'package:arte/constant/svg_images.dart';

import 'package:arte/controllers/profilecontroller.dart';
import 'package:arte/routes/route_name.dart';
import 'package:arte/widgets/buttons/buttonprofilesettings.dart';
import 'package:arte/widgets/label/text_label.dart';
import 'package:arte/widgets/profile/profileappbar.dart';
import 'package:arte/widgets/profile/profiledata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: colorWhite,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -500,
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
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        ProfileAppBar(
                          dotpress: () {},
                          signoutpress: () => controller.signout(),
                        ),
                        ProfileData(
                          username: controller.userdata.value.username,
                          email: controller.userdata.value.email,
                          imageURL: controller.userdata.value.imageUrl ?? "",
                          editpress: () {},
                          edit: false,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextPoppin(
                                label: 'User Information',
                                textSize: 14.dp,
                                textColor: colorDark,
                                bold: true,
                                align: TextAlign.left,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              ProfileButtonSettings(
                                buttonpress: () => Get.toNamed(profileEdit),
                                boxtitle: 'Edit Profile',
                                icon: leaf,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              ProfileButtonSettings(
                                buttonpress: () {},
                                boxtitle: 'My Wishlist',
                                icon: star,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
