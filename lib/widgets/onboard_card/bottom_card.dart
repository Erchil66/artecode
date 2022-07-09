import 'package:arte/constant/colors.dart';
import 'package:arte/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class BottomOnboardingCard extends StatelessWidget {
  final int? selectedIndex;

  const BottomOnboardingCard({super.key, this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: SizedBox(
        height: 1.h,
        child: Center(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: listOnboarding.length,
            itemBuilder: (context, index) => AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              margin: const EdgeInsets.only(right: 5),
              height: 0.5.h,
              width: selectedIndex == index ? 10.5.w : 2.w,
              decoration: BoxDecoration(
                color: selectedIndex == index ? colorOrange : colorDark,
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
