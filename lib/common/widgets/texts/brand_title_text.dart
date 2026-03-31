/*import 'package:e_commerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class UBrandTitleText extends StatelessWidget {
  final String title;
  final Color? color;
  final int maxLines;
  final TextAlign? textAlign;
  final UTextSizes brandTextSize;

  const UBrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = UTextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == UTextSizes.small
          ? Theme.of(context).textTheme.labelMedium?.apply(color: color)
          : brandTextSize == UTextSizes.medium
          ? Theme.of(context).textTheme.bodyLarge?.apply(color: color)
          : brandTextSize == UTextSizes.large
          ? Theme.of(context).textTheme.titleLarge?.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium?.apply(color: color),
    );
  }
}*/
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class UBrandTitleText extends StatelessWidget {
  final String title;
  final Color? color;
  final int maxLines;
  final TextAlign? textAlign;
  final UTextSizes brandTextSize;

  const UBrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = UTextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: _getTextStyle(context),
    );
  }

  TextStyle? _getTextStyle(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    switch (brandTextSize) {
      case UTextSizes.small:
        return textTheme.labelMedium?.apply(color: color);
      case UTextSizes.medium:
        return textTheme.bodyLarge?.apply(color: color);
      case UTextSizes.large:
        return textTheme.titleLarge?.apply(color: color);
      default:
        return textTheme.bodyMedium?.apply(color: color);
    }
  }
}

