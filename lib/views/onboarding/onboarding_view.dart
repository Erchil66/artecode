import 'package:arte/constant/colors.dart';
import 'package:arte/controllers/onboard_controller.dart';
import 'package:arte/models/onboarding_model.dart';
import 'package:arte/widgets/onboard_card/bottom_card.dart';
import 'package:arte/widgets/onboard_card/card.dart';
import 'package:arte/widgets/onboard_card/top_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardController());
    return Obx(
      () => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: colorWhite,
          appBar: TopCardOnboard(
            skip: () {},
            getStarted: () {},
            isLastpage: controller.selectedPagexNumber.value ==
                    listOnboarding.indexOf(listOnboarding.last)
                ? true
                : false,
          ),
          body: SafeArea(
              child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: controller.pageControll,
            itemCount: listOnboarding.length,
            onPageChanged: controller.selectedPagexNumber,
            itemBuilder: (context, index) => OnboardCard(
              headTitle: listOnboarding[index].headTitle,
              image: listOnboarding[index].image,
              description: listOnboarding[index].description,
            ),
          )),
          bottomNavigationBar: BottomOnboardingCard(
            selectedIndex: controller.selectedPagexNumber.value,
          ),
        ),
      ),
    );
  }
}
