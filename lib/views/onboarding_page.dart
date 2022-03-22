import 'package:beginner/constant/constant.dart';
import 'package:beginner/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingController onBoardingController = OnboardingController();

  OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              itemCount: onBoardingController.onboardingInfo.length,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      onBoardingController.onboardingInfo[index].imageAssets),
                  Text(
                    onBoardingController.onboardingInfo[index].title,
                    style: primaryGoogleFont,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      onBoardingController.onboardingInfo[index].description,
                      textAlign: TextAlign.center,
                      style: secondaryGoogleFont,
                    ),
                  )
                ],
              ),
              onPageChanged: onBoardingController.selectedPageIndex,
              controller: onBoardingController.pageController,
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: List.generate(
                    onBoardingController.onboardingInfo.length,
                    (index) => Obx(() {
                          return Container(
                            margin: const EdgeInsets.all(4),
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: onBoardingController
                                          .selectedPageIndex.value ==
                                      index
                                  ? Colors.red
                                  : const Color.fromARGB(255, 209, 207, 207),
                              shape: BoxShape.circle,
                            ),
                          );
                        })),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                child: Obx(() {
                  return Text(
                    onBoardingController.isLastPage ? 'Start' : 'Next',
                  );
                }),
                onPressed: () {
                  onBoardingController.forwardAction();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
