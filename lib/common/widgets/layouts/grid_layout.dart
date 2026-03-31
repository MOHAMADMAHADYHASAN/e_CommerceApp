import 'package:flutter/material.dart';

import '../../../utils/constants/uSize.dart';

class UGridLayout extends StatelessWidget {
  final int itemCount;
  final double? mainAxisCount;
  final Widget Function(BuildContext context, int index) itemBuilder;

  const UGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisCount = 200,
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
        mainAxisExtent: 270,
      ),

      itemBuilder: itemBuilder,
    );
  }
}
