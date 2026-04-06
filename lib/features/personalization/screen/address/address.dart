import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appBar/app_bar.dart';
import 'package:e_commerce/common/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/features/personalization/screen/address/add_new_address.dart';
import 'package:e_commerce/features/personalization/screen/address/widgets/singlr_address.dart';
import 'package:e_commerce/utils/constants/uColors.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:iconsax/iconsax.dart';

class UAddressScreen extends StatelessWidget {
  const UAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //----------[Appbar]-------------------
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          "Address",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      //----------[body]-------------------
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              USingleAddress(isSelected: true),
              SizedBox(height: USizes.spaceBtwItems),
              USingleAddress(isSelected: false),
            ],
          ),
        ),
      ),
      // floatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => UAddNewScreen()),
        backgroundColor: UColors.primary,
        child: Icon(Iconsax.add),
      ),
    );
  }
}
