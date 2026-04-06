import 'package:e_commerce/common/images/rounded_image.dart';
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appBar/app_bar.dart';
import 'package:e_commerce/common/widgets/button/u_elevated_button.dart';
import 'package:e_commerce/common/widgets/icons/circuler_icon.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/uColors.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/constants/uimages.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../common/widgets/products/cart/product_quantity_add_remove.dart';

class UCartScreen extends StatelessWidget {
  const UCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      //--------[App Bar]------------
      appBar: UAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineMedium),
      ),
      //--------[Body]------------
      body: Padding(
        padding: UPadding.screenPadding,
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: USizes.spaceBtwSections),
          itemCount: 13,
          itemBuilder: (context, index) {
            return Column(
              children: [
                //Cart Item
                UCartItem(),
                SizedBox(width: USizes.spaceBtwItems),
                //Price ,Counter button
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
        ),
      ),

      //BottomNaviigation Bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: UElevatedButton(onPressed: (){}, child: Text("Cheackout \$1221313")),
      ),
    );
  }
}
