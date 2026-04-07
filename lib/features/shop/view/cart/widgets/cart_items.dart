import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/products/cart/product_quantity_add_remove.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/uSize.dart';

class UCartItems extends StatelessWidget {
  final bool showAdddRemoveButton;

  const UCartItems({super.key, required this.showAdddRemoveButton});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: USizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            //Cart Item
            UCartItem(),
            SizedBox(width: USizes.spaceBtwItems),
            // ,Counter button,Price
            if (showAdddRemoveButton == true)
              Row(
                children: [
                  //Extra space
                  SizedBox(width: 90.0),
                  //Quantity Buttons
                  UProductQuantityWithAddRemove(),
                  Spacer(),
                  //Product Price
                  UProductPriceText(price: "321"),
                ],
              ),
          ],
        );
      },
    );
  }
}
