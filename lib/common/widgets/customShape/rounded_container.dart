import 'package:e_commerce/utils/constants/uColors.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:flutter/material.dart';

class URoundedContainer extends StatelessWidget {
  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor, backgroundColor;
  final EdgeInsetsGeometry? padding, margin;

  const URoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = USizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = UColors.borderPrimary,
    this.backgroundColor = UColors.white,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // default =0
      height: height,
      // default =0
      padding: padding,

      // default =0
      margin: margin,
      // default =0
      decoration: BoxDecoration(
        color: backgroundColor, // default =white
        borderRadius: BorderRadius.circular(radius), // default =16
        border: showBorder /*false*/ ? Border.all(color: borderColor) : null,
      ),
      child: child ,
    );
  }
}
