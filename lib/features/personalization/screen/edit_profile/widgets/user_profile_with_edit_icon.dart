import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/images/user_profile_logo.dart';
import '../../../../../common/widgets/icons/circuler_icon.dart';
class UserProfileWithEditIcon extends StatelessWidget {
  const UserProfileWithEditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //User Profile Logo
        UserProfileLogo(),
        Positioned(
          top: 0,
          bottom: 100,
          right: 0,
          left: 70,
          child: Center(child: UCircularIcon(icon: Iconsax.edit)),
        ),
      ],
    );
  }
}
