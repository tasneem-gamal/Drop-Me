import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  var currentPageIndex = 0.obs;

  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  void nextPage() {
    if (currentPageIndex.value < 2) {
      pageController.jumpToPage(currentPageIndex.value + 1);
    }
  }

  void skipToLastPage() {
    pageController.jumpToPage(2); 
  }
}
