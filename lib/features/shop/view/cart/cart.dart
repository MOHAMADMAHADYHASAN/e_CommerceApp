import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appBar/app_bar.dart';
import 'package:e_commerce/common/widgets/button/u_elevated_button.dart';

import 'package:e_commerce/features/shop/view/cart/widgets/cart_items.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get.dart';

import '../checkout/checkout.dart';

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
        child: UCartItems(showAdddRemoveButton: true),
      ),

      //BottomNaviigation Bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: UElevatedButton(
          onPressed: () => Get.to(() => UCheckOutSreen()),
          child: Text("Cheackout \$1221313"),
        ),
      ),
    );
  }
}
