import 'package:e_commerce/common/style/shadow.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/uColors.dart';
import '../../../utils/constants/uSize.dart';
import '../../../utils/constants/utext.dart';

class USearchBar extends StatelessWidget {
  const USearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: 0,
      right: USizes.spaceBtwSections,
      left: USizes.spaceBtwSections,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: USizes.md),
        height: USizes.searchBarHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
          color: dark
              ? UColors.black.withValues(alpha: 0.9)
              : UColors.white.withValues(alpha: 0.9),
          boxShadow: UShadow.searchBarShadow,
        ),
        child: Row(
          children: [
            //Icon
            Icon(
              Iconsax.search_favorite,
              color: dark
                  ? UColors.white.withValues(alpha: 0.5)
                  : UColors.darkGrey,
            ),
            SizedBox(width: USizes.spaceBtwItems),
            //Searchbar title
            Text(
              UTexts.searchBarTitle,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.apply(color: UColors.darkGrey),
            ),
          ],
        ),
      ),
    );
  }
}
