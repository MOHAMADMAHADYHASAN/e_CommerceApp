import 'package:e_commerce/common/widgets/customShape/circular_container.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/uColors.dart';

class UChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;
  final Function(bool?) onSelected;

  const UChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    bool isColor = UHelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? UColors.white : null),
      shape: isColor ? CircleBorder() : null,
      padding: isColor ? EdgeInsets.zero : null,
      labelPadding: isColor ? EdgeInsets.zero : null,
      avatar: isColor
          ? UCircularContainer(
              width: 50.0,
              height: 50.0,
              backgroundColor: UHelperFunctions.getColor(text)!,
            )
          : null,
      backgroundColor: isColor ? UHelperFunctions.getColor(text) : null,
    );
  }
}
