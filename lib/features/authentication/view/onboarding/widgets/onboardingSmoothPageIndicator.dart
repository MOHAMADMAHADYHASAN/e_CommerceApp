import 'package:e_commerce/features/authentication/viewModel/onboarding/onboarding_viewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/helpers/device_helpers.dart';

class OnBoardingSmoothPageNavigation extends StatelessWidget {
  const OnBoardingSmoothPageNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingViewModel.instance;
    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 4,
      left: UDeviceHelper.getScreenWidth(context) / 3,
     // right: UDeviceHelper.getScreenWidth(context) / 3,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        // OnBoardingViewModel.smoothNavigationClick
        // onDotClicked:controller.smoothNavigationClick,
        onDotClicked: (index) => controller.smoothNavigationClick(index),
        count: 3,
        effect: ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}
