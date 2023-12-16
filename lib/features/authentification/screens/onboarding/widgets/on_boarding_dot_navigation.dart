import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stouchi/features/authentification/controllers/onboarding/onboarding_controller.dart';
import 'package:stouchi/utils/constants/colors.dart';
import 'package:stouchi/utils/constants/sizes.dart';
import 'package:stouchi/utils/device/device_utility.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect:
              ExpandingDotsEffect(activeDotColor: TColors.dark, dotHeight: 6),
        ));
  }
}
