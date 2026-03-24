import 'package:e_commerce/features/authentication/view/signup/widgets/uPrivacy_policy_cheakbox.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get_core/src/get_main.dart';
import 'package:get_x/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/button/u_elevated_button.dart';
import '../../../../../utils/constants/uSize.dart';
import '../../../../../utils/constants/utext.dart';
import '../verify_email.dart';
class USignupForm extends StatelessWidget {
  const USignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column  (
      children: [
        /// First name & last name
        Row(
          children: [
            //first name
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: USizes.spaceBtwInputFields),

            //last name
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        //email
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        // phoneNumber
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        //password
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields / 2),

        //privacy and policy cheackbox
        UPrivacyPolicyCheckbox(),
        SizedBox(height: USizes.spaceBtwItems),

        /// create account
        UElevatedButton(
          onPressed: ()=>Get.to(()=>VerifyEmailScreen()),
          child: Text(UTexts.createAccount),
        ),
      ],
    );
  }
}

