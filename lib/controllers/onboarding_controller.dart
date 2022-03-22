import 'package:beginner/models/onboarding_info.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController {

  var selectedPageIndex = 0.obs;
  var pageController = PageController();

  bool get isLastPage => selectedPageIndex.value == onboardingInfo.length - 1;

  forwardAction() {

    if (isLastPage) {
      // selectedPageIndex = 0.obs;
    }else{
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.easeInOut);

    }
  }

  List<OnboardingInfo> onboardingInfo = [
    OnboardingInfo("assets/images/order.png", "Order Your Food",
        "Now you can order food anytimes for your mobile."),
    OnboardingInfo("assets/images/cook.png", "title",
        "Now you can order food anytimes for your mobile."),
    OnboardingInfo("assets/images/deliver.png", "Somethings",
        "Now you can order food anytimes for your mobile."),
  ];
}
