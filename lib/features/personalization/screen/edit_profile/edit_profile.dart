import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appBar/app_bar.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screen/edit_profile/widgets/user_profile_with_edit_icon.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UEditProfileScreen extends StatelessWidget {
  const UEditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          "Edit Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              //  User Profile With Edit Icon
              UserProfileWithEditIcon(),

              SizedBox(height: USizes.spaceBtwSections),

              //Divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              //Account Settings Heading
              USectionHeading(
                title: "Account Settings",
                showActionButton: false,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              //Account Details
              UserDetailRow(title: "Name", value: "UnknownPro", onTap: () {}),
              UserDetailRow(
                title: "UserName",
                value: "unknown_pro111",
                onTap: () {},
              ),

              //Divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              //Profile Section Heading
              USectionHeading(
                title: "Profile Settings",
                showActionButton: false,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              //Profile Settings
              UserDetailRow(title: "UserId", value: "12123", onTap: () {}),
              UserDetailRow(
                title: "Email",
                value: "unknownPro@gmail.com",
                onTap: () {},
              ),
              UserDetailRow(
                title: "Phone number",
                value: "12345678",
                onTap: () {},
              ),
              UserDetailRow(title: "Gender", value: "Male", onTap: () {}),
              SizedBox(height: USizes.spaceBtwItems),
              //Divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Close Account",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserDetailRow extends StatelessWidget {
  final String title, value;
  final IconData icon;
  final VoidCallback onTap;

  const UserDetailRow({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: USizes.spaceBtwItems / 1.5,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(flex: 1, child: Icon(icon, size: USizes.iconSm)),
          ],
        ),
      ),
    );
  }
}
