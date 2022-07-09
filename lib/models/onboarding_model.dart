import 'package:arte/constant/svg_images.dart';

class OnboardingModel {
  final String? headTitle, description, image;

  OnboardingModel({this.headTitle, this.description, this.image});
}

final listOnboarding = <OnboardingModel>[
  OnboardingModel(
    headTitle: "PICK FOR WISHLIST",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod libero quis tortor malesuada lacinia.",
    image: onboard1,
  ),
  OnboardingModel(
    headTitle: "PAY",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod libero quis tortor malesuada lacinia.",
    image: onboard2,
  ),
  OnboardingModel(
    headTitle: "DELIVER",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod libero quis tortor malesuada lacinia.",
    image: onboard3,
  ),
];
