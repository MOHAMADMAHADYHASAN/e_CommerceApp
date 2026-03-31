import 'package:flutter/material.dart';

class USectionHeading extends StatelessWidget {
  final Color? textColor;
  final String title, buttonTitle;
  final VoidCallback? onPressed;

  const USectionHeading({
    super.key,
    this.textColor,
    required this.title,
    this.buttonTitle = "View All",
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}
