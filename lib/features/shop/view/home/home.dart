import 'package:e_commerce/features/shop/view/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/view/home/widgets/home_categories.dart';
import 'package:e_commerce/common/widgets/customShape/primary_header_container.dart';
import 'package:e_commerce/features/shop/view/home/widgets/promo_slider.dart';
import 'package:e_commerce/features/shop/viewModel/home/home_Controller.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/constants/uimages.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get_core/src/get_main.dart';
import 'package:get_x/get_instance/src/extension_instance.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/productCard/product_card_vertical.dart';
import '../../../../common/widgets/textFields/search_bar.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
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
                  height: USizes.homePrimaryHeaderHeight,
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
            // Banner---Smooth page indicator---
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  //Banners
                  UPromoSlider(
                    banners: [
                      UImages.homeBanner1,
                      UImages.homeBanner2,
                      UImages.homeBanner3,
                      UImages.homeBanner4,
                      UImages.homeBanner5,
                      UImages.homeBanner6,
                    ],
                  ),
                  SizedBox(height: USizes.spaceBtwSections),

                  //Section Heading--------
                  USectionHeading(
                    title: 'Populer Products',
                    onPressed: () {},
                    buttonTitle: "View All",
                  ),

                  SizedBox(height: USizes.spaceBtwItems),

                  // Grid view of  Product Card
                  UGridLayout(
                    itemCount: 6,

                    itemBuilder: (BuildContext context, int index) {
                      return UProductCardVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
