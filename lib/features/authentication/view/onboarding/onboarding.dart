import 'package:e_commerce/features/authentication/view/onboarding/widgets/onboardingNextButton.dart';
import 'package:e_commerce/features/authentication/view/onboarding/widgets/onboardingSkip.dart';
import 'package:e_commerce/features/authentication/view/onboarding/widgets/onboardingSmoothPageIndicator.dart';
import 'package:e_commerce/features/authentication/view/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/constants/uimages.dart';
import 'package:e_commerce/utils/constants/utext.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get_core/src/get_main.dart';
import 'package:get_x/get_instance/src/extension_instance.dart';

import '../../viewModel/onboarding/onboarding_viewModel.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // instance get kora
    final controller = Get.put(OnBoardingViewModel());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            //1scroll page
            PageView(
              // OnBoardingViewModel.pageController
              controller: controller.pageController,

              // OnBoardingViewModel.updatePageIndicator
              // onDotClicked:controller.updatePageIndicator,
              onPageChanged: (index) => controller.updatePageIndicator(index),
              children: [
                OnBoardingPage(
                  animation: UImages.onboarding1Animation,
                  title: UTexts.onBoardingTitle1,
                  subTitle: UTexts.onBoardingSubTitle1,
                ),
                OnBoardingPage(
                  animation: UImages.onboarding2Animation,
                  title: UTexts.onBoardingTitle2,
                  subTitle: UTexts.onBoardingSubTitle2,
                ),
                OnBoardingPage(
                  animation: UImages.onboarding3Animation,
                  title: UTexts.onBoardingTitle3,
                  subTitle: UTexts.onBoardingSubTitle3,
                ),
              ],
            ),
            //2Skip Button
            OnBoardingSkipButton(),
            //3Indicator
            OnBoardingSmoothPageNavigation(),
            //2Bottom Button
            // custom kora holo ektu
            OnBoardingNextButton(),
            //Skip Button
           // OnBoardingSkipButton(),
          ],
        ),
      ),
    );
  }
}
