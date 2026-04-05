import 'package:flutter/material.dart';

import '../../../utils/constants/uSize.dart';

class UGridLayout extends StatelessWidget {
  final int itemCount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext context, int index) itemBuilder;

   UGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288 ,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: USizes.gridViewSpacing,
        crossAxisSpacing: USizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),

      itemBuilder: itemBuilder,
    );
  }
}
