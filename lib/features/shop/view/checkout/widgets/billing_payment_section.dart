import 'package:e_commerce/common/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/uColors.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/constants/uimages.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class UBillingPaymentSection extends StatelessWidget {
  const UBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        USectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: () {},
        ),

        Row(
          children: [
            //Payment logo
            URoundedContainer(
              width: 60.0,
              height: 35.0,
              backgroundColor: dark ? UColors.light : UColors.white,

              padding: EdgeInsets.all(USizes.sm),
              child: Image(image: AssetImage(UImages.googlePay)),
            ),
            SizedBox(width: USizes.spaceBtwItems / 2),

            //Payment Name
            Text("Google pay", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),




      ],
    );
  }
}
