import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stouchi/features/authentification/controllers/onboarding/onboarding_controller.dart';
import 'package:stouchi/features/authentification/screens/onboarding/widgets/on_boardNext_button.dart';
import 'package:stouchi/features/authentification/screens/onboarding/widgets/on_boarding_dot_navigation.dart';
import 'package:stouchi/features/authentification/screens/onboarding/widgets/on_boarding_page.dart';
import 'package:stouchi/features/authentification/screens/onboarding/widgets/on_boarding_skip.dart';
import 'package:stouchi/utils/constants/image_strings.dart';
import 'package:stouchi/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: AppImages.onBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: AppImages.onBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: AppImages.onBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3,
            ),
          ],
        ),
        const OnBoardingSkip(),
        const OnBoardingDotNavigation(),
        const OnBoardNextButton()
      ],
    ));
  }
}
