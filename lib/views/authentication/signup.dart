import 'dart:developer';

import 'package:arte/constant/colors.dart';
import 'package:arte/constant/svg_images.dart';
import 'package:arte/constant/validator.dart';
import 'package:arte/controllers/authcontroller.dart';
import 'package:arte/routes/route_name.dart';
import 'package:arte/widgets/buttons/button_custom2.dart';
import 'package:arte/widgets/label/belowtext.dart';
import 'package:arte/widgets/textfields/tetxfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpViews extends StatelessWidget {
  final GlobalKey<FormState> key2 = GlobalKey<FormState>();
  SignUpViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Authcontroller());
    return Scaffold(
      backgroundColor: colorWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: key2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(bgsignup),
                      ),
                      Positioned(
                        top: 8.h,
                        left: 5.w,
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Create an \n",
                              style: GoogleFonts.poppins(
                                fontSize: 26.dp,
                                color: colorDark,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "Account now!",
                              style: GoogleFonts.poppins(
                                fontSize: 10.dp,
                                color: colorDark,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                TextFieldCustom(
                  controller: controller.emailController,
                  svgicon: email,
                  keyboardtype: TextInputType.emailAddress,
                  hintText: "Email",
                  ispassword: false,
                  capitalization: TextCapitalization.none,
                  validator: (s) => Validator.validateEmail(s),
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                TextFieldCustom(
                  controller: controller.usernamecontroller,
                  svgicon: tagname,
                  keyboardtype: TextInputType.text,
                  hintText: "Username",
                  ispassword: false,
                  capitalization: TextCapitalization.none,
                  validator: (s) => Validator.emptyString(s),
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                TextFieldCustom(
                  controller: controller.mobilenumbercontroller,
                  svgicon: mobile,
                  keyboardtype: TextInputType.number,
                  hintText: "Mobile",
                  iconhieght: 3.3.h,
                  ispassword: false,
                  capitalization: TextCapitalization.none,
                  validator: (s) => Validator.emptyString(s),
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                TextFieldCustom(
                  controller: controller.passwordcontroller,
                  svgicon: passwordIcon,
                  iconhieght: 1.3.h,
                  keyboardtype: TextInputType.visiblePassword,
                  hintText: "Password",
                  ispassword: true,
                  capitalization: TextCapitalization.none,
                  validator: (s) => Validator.emptyString(s),
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                TextFieldCustom(
                  controller: controller.confirmpasswordcontroller,
                  svgicon: passwordIcon,
                  iconhieght: 1.3.h,
                  keyboardtype: TextInputType.visiblePassword,
                  hintText: "Confirm Password",
                  ispassword: true,
                  capitalization: TextCapitalization.none,
                  validator: (s) => Validator.confirmPass(
                      pass: controller.passwordcontroller.text, conpass: s),
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                Buttonpress(
                  buttonTittle: "Sign Up",
                  press: () {
                    if (key2.currentState!.validate()) {
                      log("Sign UP");
                      controller.addusers();
                    }
                  },
                ),
                SizedBox(
                  height: 4.5.h,
                ),
                Belowtext(
                  gmailpress: () {},
                  facebookpress: () {},
                  goto: () => Get.offAndToNamed(signIn),
                  titlelabel: "or Sign up with",
                  firsttext: "Already have an account? ",
                  secondtext: "Sign in now.",
                ),
                SizedBox(
                  height: 4.5.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
