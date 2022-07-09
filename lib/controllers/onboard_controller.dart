import 'package:arte/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
  // # out count on pages
  final selectedPagexNumber = 0.obs;
  // # Create a variable for showing in last page button
  final showGetStart = false.obs;
  // # Get the last count of the page
  bool get isLastPage => selectedPagexNumber.value == listOnboarding.length - 1;
  // # Page controller for the PageView
  final pageControll = PageController();
}
