import 'package:e_commerce/features/authentication/viewModel/onboarding/onboarding_viewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get.dart';

import '../../../../../utils/helpers/device_helpers.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingViewModel.instance;
    return Obx(
      () => controller.currentIndex == 2
          ? SizedBox()
          : Positioned(
              top: UDeviceHelper.getAppBarHeight(),
              right: 20,
              child: TextButton(
                onPressed:
                    //OnBoardingViewModel.skipPage
                    controller.skipPage,
                child: Text("Skip"),
              ),
            ),
    );
  }
}
