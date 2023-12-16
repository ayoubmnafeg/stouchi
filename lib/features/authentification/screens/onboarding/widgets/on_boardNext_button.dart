import 'package:flutter/material.dart';
import 'package:stouchi/features/authentification/controllers/onboarding/onboarding_controller.dart';
import 'package:stouchi/utils/constants/sizes.dart';
import 'package:stouchi/utils/device/device_utility.dart';

class OnBoardNextButton extends StatelessWidget {
  const OnBoardNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
          onPressed: () {
            OnboardingController.instance.nextPage();
          },
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(), backgroundColor: Colors.black),
          child: Icon(Icons.arrow_right)),
    );
  }
}
