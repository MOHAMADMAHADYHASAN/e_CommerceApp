import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/button/u_elevated_button.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/constants/utext.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subTitle;
  final VoidCallback onPressed;

  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              //image
              Image.asset(
                image,
                height: UDeviceHelper.getScreenWidth(context) * 0.6,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              //Title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              //SubTitle
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwSections),

              //Continue
              UElevatedButton(
                onPressed: onPressed,
                child: Text(UTexts.uContinue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
