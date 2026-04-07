import 'package:flutter/material.dart';

import '../../../../../utils/constants/uSize.dart';

class UBillingAmountSection extends StatelessWidget {
  const UBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Subtotal
            Text("Subtotal", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$333", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),
        //Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$3.33", style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),

        //Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$3.33", style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems),

        //Total Order
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order Total",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text("\$8663.0", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
