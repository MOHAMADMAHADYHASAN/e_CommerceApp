import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/uColors.dart';
import '../../../utils/constants/uSize.dart';
import '../customShape/rounded_container.dart';
import 'brand_card.dart';

class UBrandShowCase extends StatelessWidget {
  final List<String> images;

  const UBrandShowCase({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      borderColor: UColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(USizes.md),
      margin: EdgeInsets.only(bottom: USizes.spaceBtwItems),
      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Brand With Product Count
          UBrandCard(showBorder: false),
          Row(children: images.map((image) => buildBrandImage(dark,image)).toList()),
        ],
      ),
    );
  }

  Widget buildBrandImage(bool dark, String image) {
    return Expanded(
      child: URoundedContainer(
        height: 100,
        margin: EdgeInsets.only(right: USizes.md / 2),
        padding: EdgeInsets.all(USizes.md),
        backgroundColor: dark ? UColors.darkGrey : UColors.light,
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
