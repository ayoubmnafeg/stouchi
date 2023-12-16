import 'package:flutter/material.dart';
import 'package:stouchi/utils/constants/sizes.dart';
import 'package:stouchi/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/logos/stouchi_logo.png",
          width: 100,
          height: 100,
        ),
        Text(TTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSizes.sm),
        Text(TTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: TSizes.sm),
      ],
    );
  }
}
