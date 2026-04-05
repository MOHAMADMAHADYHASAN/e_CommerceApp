import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/images/rounded_image.dart';
import '../../../../../common/widgets/appBar/app_bar.dart';
import '../../../../../common/widgets/icons/circuler_icon.dart';
import '../../../../../utils/constants/uColors.dart';
import '../../../../../utils/constants/uSize.dart';
import '../../../../../utils/constants/uimages.dart';

class UProductThumnailAndSlider extends StatelessWidget {
   UProductThumnailAndSlider({super.key, });



  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Container(
      color: dark ? UColors.darkerGrey : UColors.light,
      child: Stack(
        children: [
          //---image [Thamnail or Thumnail]----
          SizedBox(
            height: 350,
            child: Padding(
              padding: EdgeInsets.all(USizes.productImageRadius * 2),
              child: Center(
                child: Image(image: AssetImage(UImages.productImage4a)),
              ),
            ),
          ),

          //Image Slider
          Positioned(
            left: USizes.defaultSpace,
            right: 0,
            bottom: 30,
            child: SizedBox(
              height: 80.0,
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    SizedBox(width: USizes.spaceBtwItems/2),

                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) => URoundedImage(
                  width: 80,
                  backgroundColor: dark ? UColors.dark : UColors.white,
                  padding: EdgeInsets.all(USizes.sm),
                  border: Border.all(color: UColors.grey),
                  imageURL: UImages.productImage4d,
                ),
              ),
            ),
          ),
          // ----[AppBar]   Back Arrow and  Favorite button
          UAppBar(
            showBackArrow: true,
            actions: [UCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
          ),
        ],
      ),
    );
  }
}
