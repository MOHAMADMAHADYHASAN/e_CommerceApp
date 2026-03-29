import 'package:e_commerce/utils/constants/uimages.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/uColors.dart';
import '../../../../../utils/constants/uSize.dart';
import '../../../../../utils/constants/utext.dart';

class UHomeCategories extends StatelessWidget {
  const UHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: USizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //section Heading
          Text(
            UTexts.popularCategories,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: UColors.black),
          ),
          SizedBox(height: USizes.spaceBtwItems),
          //Categories List
          SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  SizedBox(width: USizes.spaceBtwItems),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return UVerticalImageText(
                  title: 'Sports Categories',
                  image: UImages.shirtIcon,
                  textColor: UColors.white,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
