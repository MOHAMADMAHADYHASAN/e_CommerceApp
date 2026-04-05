import 'package:e_commerce/utils/constants/uColors.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class UCircularImage extends StatelessWidget {
  final String image;
  final Color? backgroundColor;
  final double width, height, padding;
  final bool showBorder;
  final Color borderColor;
  final double borderWidth;
  final BoxFit? fit;
  final bool isNetworkImage;
  final Color? overlayColor;

  const UCircularImage({
    super.key,
    required this.image,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = USizes.sm,
    this.showBorder = false,
    this.borderColor = UColors.primary,
    this.borderWidth = 1.0,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
    this.overlayColor,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? UColors.dark : UColors.light),
        borderRadius: BorderRadius.circular(100),
        border:showBorder? Border.all(color: borderColor, width: borderWidth):null ,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
        ),
      ),
    );
  }
}
