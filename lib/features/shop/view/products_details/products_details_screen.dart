import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/button/u_elevated_button.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/view/products_details/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce/features/shop/view/products_details/widgets/product_attributes.dart';
import 'package:e_commerce/features/shop/view/products_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/view/products_details/widgets/product_thumnail_and_slider.dart';
import 'package:e_commerce/utils/constants/uSize.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UProductsDetailsScreen extends StatelessWidget {
  const UProductsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //----Body.-------------------
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///------------[Product Image With Slider]-----------
            UProductThumnailAndSlider(),

            Padding(
              padding: UPadding.screenPadding,
              child: Column(
                children: [
                  ///------------[Product Details]-----------
                  ///Price , Title, Stock And brand
                  UProductMetaData(),

                  ///Attributes
                  UProductAttributes(),
                  SizedBox(height: USizes.spaceBtwSections),

                  ///CheckOut Button
                  UElevatedButton(onPressed: () {}, child: Text("CheckOut")),

                  ///Description5
                  USectionHeading(
                    title: "Description",
                    showActionButton: false,
                  ),
                  SizedBox(height: USizes.spaceBtwItems),

                  ReadMoreText(
                    "This is a product description of BATA brand shoes. There are more things that can be added but I’m...This is a product description of BATA brand shoes. There are more things that can be added but I’m...This is a product description of BATA brand shoes. There are more things that can be added but I’m...",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show More",
                    trimExpandedText: "less",
                    moreStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
      //Bottom Navigation bar--------
      bottomNavigationBar: UBottomAddToCart(),
    );
  }
}
