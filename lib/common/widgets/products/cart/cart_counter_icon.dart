import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../features/shop/view/cart/cart.dart';
import '../../../../utils/constants/uColors.dart';

class UCartCounterIcon extends StatelessWidget {


  const UCartCounterIcon({super.key, });

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        //Counter Text
        Positioned(
          right: 7.0,
          top: 3,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: dark
                  ? UColors.grey.withValues(alpha: 0.2)
                  : UColors.grey.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  fontSizeFactor: 0.8,
                  color: dark ? UColors.dark : UColors.light,
                ),
              ),
            ),
          ),
        ),
        // Cart Icon
        IconButton(
          onPressed: ()=>Get.to(()=>UCartScreen()),
          icon: Icon(Iconsax.shopping_bag),
          color: dark ? UColors.dark : UColors.light,
        ),
      ],
    );
  }
}
