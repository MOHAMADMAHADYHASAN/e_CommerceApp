import 'package:e_commerce/utils/constants/uColors.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/customShape/rounded_container.dart';
import '../../../../../utils/constants/uSize.dart';

class USingleAddress extends StatelessWidget {
  final bool isSelected;

  const USingleAddress({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: isSelected
          ? UColors.primary.withValues(alpha: 0.5)
          : Colors.transparent,
      borderColor: isSelected
          ? Colors.transparent
          : dark
          ? UColors.darkerGrey
          : UColors.grey,
      padding: EdgeInsets.all(USizes.md),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Name
              Text(
                "Unknown Pro ",
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: USizes.spaceBtwItems / 2),
              //Phone Number
              Text(
                "+0880183212313",
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: USizes.spaceBtwItems / 2),

              //Address
              Text("House No.295, Hyderabad, Sindh, bd"),
            ],
          ),
          if (isSelected)
            Positioned(
              top: 0,
              bottom: 0,
              right: 6,
              child: Icon(Iconsax.tick_circle5),
            ),
        ],
      ),
    );
  }
}
