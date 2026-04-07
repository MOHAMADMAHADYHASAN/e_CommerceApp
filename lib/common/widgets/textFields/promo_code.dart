import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/uColors.dart';
import '../../../utils/constants/uSize.dart';
import '../customShape/rounded_container.dart';
class UPromoCodeFeild extends StatelessWidget {
  const UPromoCodeFeild({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.only(
        left: USizes.md,
        top: USizes.sm,
        bottom: USizes.sm,
        right: USizes.sm,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Have any promo code ? Enter Here",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          SizedBox(
            width: 80.0,
            child: ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                backgroundColor: UColors.grey.withValues(alpha: 0.2),
                foregroundColor: dark
                    ? UColors.white.withValues(alpha: 0.5)
                    : UColors.dark.withValues(alpha: 0.5),
                side: BorderSide(
                  color: UColors.grey.withValues(alpha: 0.1),
                ),
              ),
              child: Text("Apply"),
            ),
          ),
        ],
      ),
    );
  }
}
