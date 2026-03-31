import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/uSize.dart';
import '../../../utils/constants/uimages.dart';
import '../../images/rounded_image.dart';
import '../customShape/rounded_container.dart';
import '../texts/brand_title_with_verify_icon.dart';

class UBrandCard extends StatelessWidget {
  const UBrandCard({super.key});

  @override
  Widget build(BuildContext context) {
    return URoundedContainer(
      width: USizes.brandCardWidth,
      showBorder: true,
      padding: EdgeInsets.all(USizes.sm),
      backgroundColor: Colors.transparent,
      child: Row(
        //Brand Image ,name & Verify Icon
        children: [
          //Brand Image
          Flexible(
            child: URoundedImage(
              imageURL: UImages.adidasLogo,
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(width: USizes.spaceBtwItems / 2),

          //Brand name & Verify Icon & Text
          //Right portion
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                //Brand name & Verify Icon
                UBrandTitleWithVerifyIcon(
                  title: "adidas",
                  brandTextSize: UTextSizes.large,
                ),
                //Text
                Text(
                  "172 products",
                  style: Theme.of(context).textTheme.labelMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
