import 'package:flutter/material.dart';
import 'package:get_x/get_core/src/get_main.dart';
import 'package:get_x/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../edit_profile/edit_profile.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        "Unknown Pro",
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text(
        "unknownpro@gmail.com",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: IconButton(
        onPressed: () => Get.to(() => UEditProfileScreen()),
        icon: Icon(Iconsax.edit),
      ),
    );
  }
}
