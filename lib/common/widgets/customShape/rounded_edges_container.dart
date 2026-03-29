import 'package:flutter/material.dart';

import 'clipper/custom_rounded_clipper.dart';

class URoundedEdgesContainer extends StatelessWidget {
  final Widget child;

  const URoundedEdgesContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      //clipper
      clipper: UCustomRoundedEdges(),
      child: child,
    );
  }
}
