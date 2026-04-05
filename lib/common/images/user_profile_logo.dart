import 'package:flutter/material.dart';

import '../../utils/constants/uimages.dart';
import 'circular_image.dart';

class UserProfileLogo extends StatelessWidget {
  const UserProfileLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return UCircularImage(
      image: UImages.profileLogo,
      height: 120,
      width: 120,
      borderWidth: 5.0,
      padding: 0,
    );
  }
}
