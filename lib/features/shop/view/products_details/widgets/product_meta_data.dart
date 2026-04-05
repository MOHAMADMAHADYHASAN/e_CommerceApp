import 'package:flutter/material.dart';

import '../../../../../common/images/circular_image.dart';
import '../../../../../common/widgets/customShape/rounded_container.dart';
import '../../../../../common/widgets/texts/brand_title_with_verify_icon.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/uColors.dart';
import '../../../../../utils/constants/uSize.dart';
import '../../../../../utils/constants/uimages.dart';

class UProductMetaData extends StatelessWidget {
  const UProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Sale tag ,Sale Price,Actual Price And Share Button
        Row(
          children: [
            URoundedContainer(
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
                ).textTheme.labelLarge?.apply(color: UColors.black),
              ),
            ),
            SizedBox(width: USizes.spaceBtwItems),
            Text(
              "\$250",
              style: Theme.of(context).textTheme.titleSmall?.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: USizes.spaceBtwItems),

            //Actual Price
            UProductPriceText(price: "150", isLarge: true),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          ],
        ),

        SizedBox(height: USizes.spaceBtwItems / 1.5),
        //Product Status
        Row(
          children: [
            UProductTitleText(title: "Status"),
            SizedBox(width: USizes.spaceBtwItems),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        //Product Brand Image With Title
        SizedBox(height: USizes.spaceBtwItems / 1.5),
        Row(
          children: [
            //Brand Image
            UCircularImage(
              padding: 0,
              image: UImages.appleLogo,
              width: 32.0,
              height: 32.0,
            ),
            SizedBox(width: USizes.spaceBtwItems),
            //Brand Title
            UBrandTitleWithVerifyIcon(title: "Apple"),
          ],
        ),
      ],
    );
  }
}
