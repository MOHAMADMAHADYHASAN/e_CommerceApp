import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/uColors.dart';
import '../../../utils/constants/uSize.dart';
import '../customShape/circular_container.dart';

class UVerticalImageText extends StatelessWidget {
  final String title, image;
  final Color textColor;
  final Color? backgrounColor;
  final VoidCallback? onTap;

  const UVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    required this.textColor,
    this.backgrounColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          //Circulaer Image
          UCircularContainer(
            height: 56,
            width: 56,
            backgroundColor: backgrounColor ?? (dark ?UColors.dark :UColors.light),
            padding: EdgeInsets.all(USizes.sm),
            child: Image(image: AssetImage(image), fit: BoxFit.cover),
          ),
          SizedBox(height: USizes.spaceBtwItems / 2),
          //Title
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
