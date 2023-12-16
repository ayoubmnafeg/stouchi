import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stouchi/features/authentification/screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  final pageController = PageController();

  Rx<int> _currentPageIndex = 0.obs;

  void updatePageIndicator(index) {
    _currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    _currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (_currentPageIndex.value == 2) {
      Get.to(LoginScreen());
    } else {
      int page = _currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    Get.to(LoginScreen());
  }
}
