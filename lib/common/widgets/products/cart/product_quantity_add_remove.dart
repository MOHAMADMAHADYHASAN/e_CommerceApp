import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/uColors.dart';
import '../../../../utils/constants/uSize.dart';
import '../../icons/circuler_icon.dart';

class UProductQuantityWithAddRemove extends StatelessWidget {
  const UProductQuantityWithAddRemove({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // Increment Button
        UCircularIcon(
          icon: Iconsax.minus,
          width: 32.0,
          height: 32.0,
          size: USizes.iconSm,
          color: dark ? UColors.white : UColors.black,
          backgroundColor: dark ? UColors.darkGrey : UColors.light,
        ),
        SizedBox(width: USizes.spaceBtwItems),
        //Counter Text
        Text("2", style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: USizes.spaceBtwItems),

        // Decriment Button
        UCircularIcon(
          icon: Iconsax.add,
          width: 32.0,
          height: 32.0,
          size: USizes.iconSm,
          color: UColors.white,
          backgroundColor: UColors.primary,
        ),
      ],
    );
  }
}
