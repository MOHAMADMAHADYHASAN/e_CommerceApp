import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appBar/app_bar.dart';
import 'package:e_commerce/common/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/common/widgets/screen/success_screen.dart';
import 'package:e_commerce/features/shop/view/cart/widgets/cart_items.dart';
import 'package:e_commerce/features/shop/view/checkout/widgets/billing_address.dart';
import 'package:e_commerce/features/shop/view/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce/features/shop/view/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce/navigation_menue.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/constants/uimages.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get_core/src/get_main.dart';
import 'package:get_x/get_navigation/src/extension_navigation.dart';

import '../../../../common/widgets/button/u_elevated_button.dart';
import '../../../../common/widgets/textFields/promo_code.dart';

class UCheckOutSreen extends StatelessWidget {
  const UCheckOutSreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      //---------------------[AppBar]-----------
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      //-------------------[Body]---------------
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              //Items
              UCartItems(showAdddRemoveButton: false),
              SizedBox(height: USizes.spaceBtwItems),

              //promo code -TextFeild
              UPromoCodeFeild(),
              SizedBox(height: USizes.spaceBtwSections),

              //Billing Section
              URoundedContainer(
                showBorder: true,

                padding: EdgeInsets.all(USizes.md),
                backgroundColor: Colors.transparent,

                child: Column(
                  children: [
                    //Amount
                    UBillingAmountSection(),
                    SizedBox(height: USizes.spaceBtwItems),
                    //Payment
                    UBillingPaymentSection(),
                    //Billing Address
                    UBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: UElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: UImages.successfulPaymentIcon,
              title: "Payment Success",
              subTitle: "Your Item Will shipped Soon",
              onPressed: () => Get.offAll(() => NavigationMenue()),
            ),
          ),
          child: Text("Checkout \$1221313"),
        ),
      ),
    );
  }
}
