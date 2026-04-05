import 'package:e_commerce/navigation_menue.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/button/u_elevated_button.dart';
import '../../../../../utils/constants/uSize.dart';
import '../../../../../utils/constants/utext.dart';
import '../../forget_password/forget_password.dart';
import '../../signup/signup.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Email
        TextFormField(
          decoration: InputDecoration(
            prefix: Icon(Iconsax.direct_right),
            labelText: UTexts.email,
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        //password
        TextFormField(
          decoration: InputDecoration(
            prefix: Icon(Iconsax.password_check),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields / 2),
        // Remember me & forget password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Remember me
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(UTexts.rememberMe),
              ],
            ),

            //forget password
            TextButton(
              onPressed: () => Get.to(() => ForgetPasswordScreen()),
              child: Text(UTexts.forgetPassword),
            ),
          ],
        ),
        SizedBox(height: USizes.spaceBtwSections),

        //Sign In
        UElevatedButton(
          onPressed: () => Get.to(() => NavigationMenue()),
          child: Text(UTexts.signIn),
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),

        //Create Account
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => Get.to(() => SignUpScreen()),
            child: Text(UTexts.createAccount),
          ),
        ),
      ],
    );
  }
}
