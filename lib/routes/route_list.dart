import 'package:arte/binding/bindingmain.dart';
import 'package:arte/routes/route_name.dart';
import 'package:arte/views/authentication/signin.dart';
import 'package:arte/views/authentication/signup.dart';
import 'package:arte/views/dashboard/mainboard.dart';
import 'package:arte/views/onboarding/onboarding_view.dart';
import 'package:arte/views/profile/editprofile.dart';
import 'package:get/get.dart';

class Routes {
  static final list = [
    //// Auth
    GetPage(
        transition: Transition.downToUp,
        transitionDuration: 250.milliseconds,
        name: signIn,
        page: () => SignInViews()),
    GetPage(
        transition: Transition.downToUp,
        transitionDuration: 250.milliseconds,
        name: signUp,
        page: () => SignUpViews()),

    /// Onboarding
    GetPage(
        transition: Transition.downToUp,
        transitionDuration: 250.milliseconds,
        name: onboard,
        page: () => const OnboardingView()),

    //Mainboard
    GetPage(
        transition: Transition.downToUp,
        transitionDuration: 250.milliseconds,
        name: mainboard,
        binding: Bindingmain(),
        page: () => const MainboardView()),
    //Profile Edit
    GetPage(
        transition: Transition.downToUp,
        transitionDuration: 250.milliseconds,
        name: profileEdit,
        page: () => const ProfileEdit()),
  ];
}
