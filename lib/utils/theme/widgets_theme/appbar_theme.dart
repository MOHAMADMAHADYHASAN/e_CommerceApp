import 'package:flutter/material.dart';

import '../../constants/uColors.dart';
import '../../constants/uSize.dart';

class UAppBarTheme {
  UAppBarTheme._();

  //light
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: UColors.black, size: USizes.iconMd),
    actionsIconTheme: IconThemeData(color: UColors.black, size: USizes.iconMd),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: UColors.black,
    ),
  );

  //dark
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: UColors.white, size: USizes.iconMd),
    actionsIconTheme: IconThemeData(color: UColors.white, size: USizes.iconMd),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: UColors.white,
    ),
  );
}
