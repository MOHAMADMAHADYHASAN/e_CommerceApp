import 'package:flutter/material.dart';

import '../../../utils/constants/uColors.dart';

class UCircularContainer extends StatelessWidget {
  final double height, width;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding, margin;
  final Widget? child;

  const UCircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.backgroundColor = UColors.white,
    this.padding,
    this.margin,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
