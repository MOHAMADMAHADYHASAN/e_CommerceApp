import 'package:e_commerce/features/authentication/viewModel/onboarding/onboarding_viewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_x/get.dart';

import '../../../../../common/widgets/button/u_elevated_button.dart';
import '../../../../../utils/constants/uSize.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingViewModel.instance;
    return Positioned(
      left: 0,
      right: 0,
     // right: 20,

      bottom: USizes.spaceBtwItems,
      child: UElevatedButton(
        onPressed:
            ///OnBoardingViewModel.nextPage
            controller.nextPage,
        //obserbal current index
        child: Obx(
          () =>
              Text(controller.currentIndex.value == 2 ? "Get Started" : "Next"),
        ),
      ),
    );
  }
}
