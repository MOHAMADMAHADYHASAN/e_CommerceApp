import 'package:e_commerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/uColors.dart';
import '../../../utils/constants/uSize.dart';
import 'brand_title_text.dart';

class UBrandTitleWithVerifyIcon extends StatelessWidget {
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final UTextSizes brandTextSize;

  const UBrandTitleWithVerifyIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = UColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = UTextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: UBrandTitleText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
            color: textColor,
          ),
        ),
        SizedBox(width: USizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: USizes.iconXs),
      ],
    );
  }
}
