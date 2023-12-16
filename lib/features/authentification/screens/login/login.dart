import 'package:flutter/material.dart';
import 'package:stouchi/features/authentification/screens/login/widgets/login_form.dart';
import 'package:stouchi/features/authentification/screens/login/widgets/login_header.dart';
import 'package:stouchi/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: TSizes.appBarHeight,
            left: TSizes.defaultSpace,
            bottom: TSizes.defaultSpace,
            right: TSizes.defaultSpace,
          ),
          child: Column(children: [
            LoginHeader(),
            LoginForm(),
          ]),
        ),
      ),
    );
  }
}
