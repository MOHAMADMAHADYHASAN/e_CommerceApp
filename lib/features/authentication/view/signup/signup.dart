import 'package:e_commerce/features/authentication/view/signup/widgets/signup_from.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/constants/utext.dart';
import 'package:flutter/material.dart';

import '../../../../common/login_signup/form_divider.dart';
import '../../../../common/style/padding.dart';
import '../../../../common/widgets/button/social_buttons.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //------------Header---------------------
              Text(
                UTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwSections),
              //--------------form---------------------
              USignupForm(),
              SizedBox(height: USizes.spaceBtwSections),

              //--------------Divider---------------------
              UFormDivider(title: UTexts.orSignupWith,) ,
              SizedBox(height: USizes.spaceBtwSections/2),

              //--------------Footer---------------------
              USocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

