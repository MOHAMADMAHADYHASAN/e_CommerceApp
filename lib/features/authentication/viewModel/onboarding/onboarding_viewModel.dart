import 'package:e_commerce/features/authentication/view/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:get_x/get_core/src/get_main.dart';
import 'package:get_x/get_instance/src/extension_instance.dart';
import 'package:get_x/get_rx/src/rx_types/rx_types.dart';
import 'package:get_x/get_state_manager/src/simple/get_controllers.dart';

class OnBoardingViewModel extends GetxController {
  static OnBoardingViewModel get instance => Get.find();

  // Variable-----
  final pageController = PageController();
  RxInt currentIndex = 0.obs;

  // Update current index when page scroll
  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  /// Jump to specific dot  selected page
  void smoothNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Update current index and jump to the next page
  void nextPage() {
    if (currentIndex.value == 2) {
      //____________GetStart page to login page ------
      Get.offAll(() => LogInScreen());
      return;
    }
    ;
    currentIndex.value++;
    pageController.jumpToPage(currentIndex.value);
  }

  /// Update current index and jump to the last page
  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(currentIndex.value);
  }
}
