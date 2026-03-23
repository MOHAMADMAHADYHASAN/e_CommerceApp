import 'package:e_commerce/features/authentication/view/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/view/login/widgets/login_header.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/constants/utext.dart';
import 'package:flutter/material.dart';

import '../../../../common/login_signup/form_divider.dart';
import '../../../../common/style/padding.dart';
import '../../../../common/widgets/button/social_buttons.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: UPadding.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //-----[Header]---
              //Title & SubTitle
              ULoginHeader(),
              SizedBox(height: USizes.spaceBtwSections),
              //-----[from]----
              ULoginForm(),
              SizedBox(height: USizes.spaceBtwSections),
              //-----[Divider]----
              UFormDivider(title: UTexts.orSignInWith),
              SizedBox(height: USizes.spaceBtwSections / 2),
              //-----[Footer]----
              USocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
