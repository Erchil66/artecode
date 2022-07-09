import 'package:arte/routes/route_name.dart';
import 'package:arte/views/authentication/signin.dart';
import 'package:arte/views/authentication/signup.dart';
import 'package:arte/views/onboarding/onboarding_view.dart';
import 'package:get/get.dart';

class Routes {
  static final list = [
    //// Auth
    GetPage(
        transition: Transition.downToUp,
        transitionDuration: 250.milliseconds,
        name: signIn,
        page: () => const SignInViews()),
    GetPage(
        transition: Transition.downToUp,
        transitionDuration: 250.milliseconds,
        name: signUp,
        page: () => const SignUpViews()),

    /// Onboarding
    GetPage(
        transition: Transition.downToUp,
        transitionDuration: 250.milliseconds,
        name: onboard,
        page: () => const OnboardingView()),
  ];
}
