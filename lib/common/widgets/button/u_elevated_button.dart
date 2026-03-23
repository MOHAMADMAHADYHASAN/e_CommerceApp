import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class UElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const UElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: UDeviceHelper.getScreenHeight(context),
      child: ElevatedButton(onPressed: onPressed, child:child ),
    );
  }
}
