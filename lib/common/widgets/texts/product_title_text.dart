import 'package:flutter/material.dart';

class UProductTitleText extends StatelessWidget {
  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  const UProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      title,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
