import 'package:flutter/material.dart';

import '../../../utils/constants/uColors.dart';
import '../../../utils/constants/uSize.dart';
import '../../../utils/constants/uimages.dart';

class USocialButtons extends StatelessWidget {
  const USocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //google button
        buildButton(UImages.googleIcon, () {}),
        SizedBox(width: USizes.spaceBtwItems / 2),

        //facebook button
        buildButton(UImages.facebookIcon, () {}),
        SizedBox(width: USizes.spaceBtwItems / 2),
      ],
    );
  }

  Container buildButton(String image, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: UColors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(image, height: USizes.iconMd, width: USizes.iconMd),
      ),
    );
  }
}
