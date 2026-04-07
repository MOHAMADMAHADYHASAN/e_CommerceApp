import 'package:e_commerce/utils/constants/uColors.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class UBillingAddressSection extends StatelessWidget {
  const UBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //------[Text]--Billing
        USectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        Text("Unknown Pro", style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: USizes.spaceBtwItems / 2),

        Row(
          children: [
            Icon(Icons.phone, size: USizes.iconSm, color: UColors.darkGrey),

            SizedBox(width: USizes.spaceBtwItems),
            Text("+08812345678"),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(
              Icons.location_on,
              size: USizes.iconSm,
              color: UColors.darkGrey,
            ),

            SizedBox(width: USizes.spaceBtwItems),
            Expanded(
              child: Text("House no.295, Dhaka Bangladesh", softWrap: true),
            ),
          ],
        ),
      ],
    );
  }
}
