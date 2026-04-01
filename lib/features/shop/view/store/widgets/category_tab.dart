import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/productCard/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/uSize.dart';
import '../../../../../utils/constants/uimages.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(

      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
          child: Column(
            children: [
              // Brand Show Case 1
              UBrandShowCase(
                images: [
                  UImages.productImage28,
                  UImages.productImage2,
                  UImages.productImage6,
                ],
              ), //Brand Show Case 2
              UBrandShowCase(
                images: [
                  UImages.productImage28,
                  UImages.productImage2,
                  UImages.productImage6,
                ],
              ),
              SizedBox(height: USizes.spaceBtwItems),
              //You Might Know Section
              USectionHeading(title: "You Might Like", onPressed: () {}),
              SizedBox(height: USizes.spaceBtwItems / 2),
              //Grid View LayOut  Products
              UGridLayout(
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return UProductCardVertical();
                },
              ),
              SizedBox(height: USizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
