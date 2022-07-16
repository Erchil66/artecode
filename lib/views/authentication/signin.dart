import 'dart:developer';

import 'package:arte/constant/colors.dart';
import 'package:arte/constant/validator.dart';
import 'package:arte/controllers/authcontroller.dart';
import 'package:arte/routes/route_name.dart';
import 'package:arte/widgets/buttons/button_custom2.dart';
import 'package:arte/widgets/label/belowtext.dart';
import 'package:arte/widgets/textfields/tetxfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:arte/constant/svg_images.dart';

import 'package:get/get.dart';

class SignInViews extends StatelessWidget {
  final GlobalKey<FormState> key1 = GlobalKey<FormState>();
  SignInViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Authcontroller());
    return Scaffold(
      backgroundColor: colorWhite,
      body: Stack(
        children: [
          Image.asset(
            space,
            fit: BoxFit.cover,
            // height: Adaptive.h(100.h),
            width: Adaptive.w(100.w),
          ),
          Positioned(
            top: 27.h,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Form(
                key: key1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFieldCustom(
                      controller: controller.emailController,
                      svgicon: email,
                      keyboardtype: TextInputType.emailAddress,
                      hintText: "Email",
                      ispassword: false,
                      capitalization: TextCapitalization.none,
                      validator: (s) => Validator.emptyString(s),
                    ),
                    SizedBox(
                      height: 5.5.h,
                    ),
                    TextFieldCustom(
                      controller: controller.passwordcontroller,
                      svgicon: passwordIcon,
                      iconhieght: 1.5.h,
                      keyboardtype: TextInputType.visiblePassword,
                      hintText: "Password",
                      ispassword: true,
                      capitalization: TextCapitalization.none,
                      validator: (s) => Validator.emptyString(s),
                    ),
                    SizedBox(
                      height: 8.5.h,
                    ),
                    Buttonpress(
                      buttonTittle: "Sign in",
                      press: () {
                        if (key1.currentState!.validate()) {
                          log("Sign In");
                        }
                      },
                    ),
                    SizedBox(
                      height: 8.5.h,
                    ),
                    Belowtext(
                      gmailpress: () {},
                      facebookpress: () {},
                      goto: () => Get.offAndToNamed(signUp),
                      titlelabel: "or Sign in with",
                      firsttext: "Don't have an account yet? ",
                      secondtext: "Sign up now.",
                    ),
                    SizedBox(
                      height: 4.5.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
