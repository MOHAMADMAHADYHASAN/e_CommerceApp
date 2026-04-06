import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screen/profile/widgets/profile_primary_header.dart';
import 'package:e_commerce/features/personalization/screen/profile/widgets/setting_menu_tile.dart';
import 'package:e_commerce/features/personalization/screen/profile/widgets/user_profile_tile.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:iconsax/iconsax.dart';

import '../address/address.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UProfilePrimaryHeader(),
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  //User Profile Details
                  UserProfileTile(),
                  SizedBox(height: USizes.spaceBtwItems),
                  //Account Settings Heading
                  USectionHeading(
                    title: "Account Setting",
                    showActionButton: false,
                  ),
                  //Settings Menu
                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Addresses",
                    subTitle: "Set shopping delivery addresses",
                    onTap: () => Get.to(() => UAddressScreen()),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add remove products and move to checkout",
                    onTap: () => Get.to(() => UAddressScreen()),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Order",
                    subTitle: "In-progress and Completed Orders",
                    onTap: () => Get.to(() => UAddressScreen()),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),

                  //Logout
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("LogOut"),
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
