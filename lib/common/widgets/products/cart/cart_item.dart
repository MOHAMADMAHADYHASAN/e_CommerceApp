import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/uColors.dart';
import '../../../../utils/constants/uSize.dart';
import '../../../../utils/constants/uimages.dart';
import '../../../images/rounded_image.dart';
import '../../texts/brand_title_with_verify_icon.dart';
import '../../texts/product_title_text.dart';
class UCartItem extends StatelessWidget {
  const UCartItem({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        //Image---
        URoundedImage(
          imageURL: UImages.productImage3,
          height: 60.0,
          padding: EdgeInsets.all(USizes.sm),
          backgroundColor: dark ? UColors.darkGrey : UColors.light,
        ),
        SizedBox(width: USizes.spaceBtwItems),
        //BRand ,Name , Varition
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //brand
              UBrandTitleWithVerifyIcon(title: "iPhone"),
              // Title
              UProductTitleText(
                title: "iPhone 11 64 GB W",
                maxLines: 1,
              ),

              //Variation and attributes
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Color ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "Green ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: "Storage ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "512GB ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
