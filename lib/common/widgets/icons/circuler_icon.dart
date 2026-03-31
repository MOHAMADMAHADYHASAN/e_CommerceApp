import 'package:e_commerce/utils/constants/uColors.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/uSize.dart';

class UCircularIcon extends StatelessWidget {
  final double? width, height, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  const UCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = USizes.iconMd,

    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: (backgroundColor != null)
            ? backgroundColor
            : dark
            ? UColors.dark.withValues(alpha: 0.9)
            : UColors.light.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
