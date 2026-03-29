import 'package:e_commerce/features/shop/view/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/view/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/view/home/widgets/primary_header_container.dart';
import 'package:e_commerce/features/shop/view/home/widgets/promo_slider.dart';
import 'package:e_commerce/features/shop/viewModel/home/home_Controller.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/constants/uimages.dart';

import 'package:flutter/material.dart';
import 'package:get_x/get_core/src/get_main.dart';
import 'package:get_x/get_instance/src/extension_instance.dart';

import '../../../../common/widgets/textFields/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //[-----------------Upper part----------------------]
            Stack(
              children: [
                //Total height + 20
                SizedBox(height: USizes.homePrimaryHeaderHeight + 10),

                //Primary header Container
                UPrimaryHeaderContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //AppBar
                      UHomeAppBar(),
                      SizedBox(height: USizes.spaceBtwSections),

                      //Home categories
                      UHomeCategories(),
                    ],
                  ),
                ),
                //Searchbar
                USearchBar(),
              ],
            ),

            //[-----------------lower part----------------------]
            // Banner---Smooth page indicator
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: UPromoSlider(
                banners: [
                  UImages.homeBanner1,
                  UImages.homeBanner2,
                  UImages.homeBanner3,
                  UImages.homeBanner4,
                  UImages.homeBanner5,
                  UImages.homeBanner6,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
