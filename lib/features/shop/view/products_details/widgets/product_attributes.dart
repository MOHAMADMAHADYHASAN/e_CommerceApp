import 'package:e_commerce/common/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/uColors.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/choiceChips/choice_chips.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //----------------Slelected Attributes Pricing And Descriotion
        URoundedContainer(
          padding: EdgeInsets.all(USizes.md),
          backgroundColor: dark ? UColors.darkerGrey : UColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //---- Title , price, stock
              Row(
                children: [
                  // --[Text]-- Variation Heading-----
                  USectionHeading(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  SizedBox(width: USizes.spaceBtwItems),
                  Column(
                    children: [
                      //   Price , sale price , Actual Price
                      Row(
                        children: [
                          // [Text]  Price
                          UProductTitleText(title: "Price", smallSize: true),

                          //--Actual Price
                          Text(
                            "250",
                            style: Theme.of(context).textTheme.titleSmall
                                ?.apply(
                                  decoration: TextDecoration.lineThrough,
                                ),
                          ),
                          SizedBox(width: USizes.spaceBtwItems),

                          // Stock Status
                          UProductPriceText(price: "200"),
                        ],
                      ),

                      Row(
                        children: [
                          UProductTitleText(title: "Stock", smallSize: true),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //------Attributes Description
              UProductTitleText(
                title: "This is a products of iPhone 11 with 512 GB",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: USizes.spaceBtwItems),
        // ----Attributes  ..Color
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: "Colors", showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: "Orange",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        // ----Attributes  ..Sizes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: "Sizes", showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(
                  text: 'Small',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: ' Medium',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: "Large",
                  selected: true,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
