import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../viewModel/home/home_Controller.dart';






class BannersDotNavigation extends StatelessWidget {
  const BannersDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;

    return Obx(
      () => SmoothPageIndicator(
        controller: PageController(initialPage: controller.currentIndex.value),
        count: 6,
        effect: ExpandingDotsEffect(dotHeight: 7.0, dotColor: Colors.blueGrey),
      ),
    );
  }
}
