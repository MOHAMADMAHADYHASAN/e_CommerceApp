import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/customShape/circular_container.dart';
import '../../../../../common/widgets/customShape/rounded_edges_container.dart';
import '../../../../../utils/constants/uColors.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  final double height;

  const UPrimaryHeaderContainer({
    super.key,
    required this.child,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    //Custom clipper
    return URoundedEdgesContainer(
      child: Container(
        height: height,
        color: UColors.primary,
        child: Stack(
          children: [
            //circular container
            Positioned(
              top: -150,
              right: -160,
              child: UCircularContainer(
                height: USizes.homePrimaryHeaderHeight,
                width: USizes.homePrimaryHeaderHeight,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
              ),
            ),

            //circular container
            Positioned(
              top: 50,
              right: -250,
              child: UCircularContainer(
                height: USizes.homePrimaryHeaderHeight,
                width: USizes.homePrimaryHeaderHeight,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
              ),
            ),

            ////-----------child--------------
            child,
          ],
        ),
      ),
    );
  }
}
