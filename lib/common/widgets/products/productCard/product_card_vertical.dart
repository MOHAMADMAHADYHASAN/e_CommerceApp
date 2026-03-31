import 'package:e_commerce/common/images/rounded_image.dart';
import 'package:e_commerce/common/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/utils/constants/uColors.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/constants/uimages.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../style/shadow.dart';
import '../../icons/circuler_icon.dart';
import '../../texts/brand_title_text.dart';
import '../../texts/brand_title_with_verify_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class UProductCardVertical extends StatelessWidget {
  const UProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,

        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: UShadow.verticalProductShadow,

          borderRadius: BorderRadius.circular(USizes.productImageRadius),
          color: dark ? UColors.darkGrey : UColors.white,
        ),
        child: Column(
          children: [
            //Thambnail,Favorite Button and Discount tag
            URoundedContainer(
              width: 180,
              padding: EdgeInsets.all(USizes.sm),
              backgroundColor: dark ? UColors.dark : UColors.light,
              child: Stack(
                children: [
                  // Thambnail...
                  URoundedImage(imageURL: UImages.productImage4a),

                  //Discount Tag
                  Positioned(
                    top: 12.0,
                    child: URoundedContainer(
                      radius: USizes.sm,
                      backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                      padding: EdgeInsets.symmetric(
                        horizontal: USizes.sm,
                        vertical: USizes.xs,
                      ),
                      child: Text(
                        "20%",
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: UColors.black),
                      ),
                    ),
                  ),

                  /// Favorite Button
                  Positioned(
                    right: 0,
                    top: 0,
                    child: UCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: USizes.spaceBtwItems / 2),
            //Details---
            Padding(
              padding: const EdgeInsets.only(left: USizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Products Title
                  UProductTitleText(title: 'Blue Bata Shoes', smallSize: true),
                  SizedBox(height: USizes.spaceBtwItems / 2),
                  //product Brand
                  UBrandTitleWithVerifyIcon(title: 'Bata',),
                ],
              ),
            ),
            const Spacer(),
            //Product Price & Add Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                //Product Price
                Padding(
                  padding: const EdgeInsets.only(left: USizes.sm),
                  child: UProductPriceText(price: '65'),
                ),
                // Add Button
                Container(
                  width: USizes.iconLg * 1.2,
                  height: USizes.iconLg * 1.2,
                  decoration: BoxDecoration(
                    color: UColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(USizes.cardRadiusMd),
                      bottomRight: Radius.circular(USizes.productImageRadius),
                    ),
                  ),
                  child: Icon(Iconsax.add, color: UColors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

