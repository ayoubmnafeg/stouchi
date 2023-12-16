import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stouchi/features/Finance_app/Screens/widgets/bottomnavigationbar.dart';
import 'package:stouchi/features/authentification/screens/signup/signup.dart';
import 'package:stouchi/utils/constants/sizes.dart';
import 'package:stouchi/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: TTexts.email,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: TTexts.password,
            suffixIcon: Icon(Icons.visibility),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const Text(TTexts.rememberMe)
              ],
            ),
            TextButton(
              onPressed: () {},
              child: const Text(TTexts.forgetPassword),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(() => Bottom()),
            child: const Text(TTexts.signIn),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => Get.to(() => SignupScreen()),
            child: const Text(TTexts.createAccount),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    ));
  }
}
