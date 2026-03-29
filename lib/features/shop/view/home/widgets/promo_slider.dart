import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/features/shop/viewModel/home/home_Controller.dart';
import 'package:flutter/material.dart';

import '../../../../../common/images/rounded_image.dart';
import '../../../../../utils/constants/uSize.dart';
import 'banners_dot_navigation.dart';

class UPromoSlider extends StatelessWidget {
  final List<String> banners;

  const UPromoSlider({super.key, required this.banners});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        // Banner
        CarouselSlider(
          items: banners
              .map((banners) => URoundedImage(imageURL: banners))
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) => controller.onPageChanged(index),
          ),
          carouselController: controller.carouselController,
        ),
        SizedBox(height: USizes.spaceBtwItems),
        //Smooth page indicator
        BannersDotNavigation(),
      ],
    );
  }
}
