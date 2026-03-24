import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/button/u_elevated_button.dart';
import 'package:e_commerce/features/authentication/view/forget_password/reset_password.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/constants/utext.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get_core/src/get_main.dart';
import 'package:get_x/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: UPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //---------------Header.-------------
            //Title
            Text(
              UTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: USizes.spaceBtwItems / 2),

            //subtitle
            Text(
              UTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: USizes.spaceBtwSections * 2),
            //------------------form----------
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: UTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                ),
                SizedBox(height: USizes.spaceBtwItems),
                UElevatedButton(
                  onPressed: () => Get.to(() => ResetPasswordScreen()),
                  child: Text(UTexts.submit),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
