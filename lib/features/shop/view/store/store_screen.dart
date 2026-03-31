import 'package:e_commerce/common/images/rounded_image.dart';
import 'package:e_commerce/common/widgets/appBar/app_bar.dart';
import 'package:e_commerce/common/widgets/customShape/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/view/store/widgets/store_primary_header.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/uColors.dart';
import 'package:e_commerce/utils/constants/uimages.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/textFields/search_bar.dart';
import '../../../../utils/constants/uSize.dart';
import '../home/widgets/home_appbar.dart';
import '../home/widgets/home_categories.dart';
import '../home/widgets/primary_header_container.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              //300
              expandedHeight: 300,
              pinned: true,
              floating: true,
              flexibleSpace: Column(
                children: [
                  //UPrimary header
                  UStorePrimaryHeader(),
                  SizedBox(height: USizes.spaceBtwItems),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: USizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        //Brand heading
                        USectionHeading(title: "Brands", onPressed: () {}),
                        //Brand Card
                        SizedBox(
                          height: USizes.brandCardHeight,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) =>
                                SizedBox(width: USizes.spaceBtwItems),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) => UBrandCard(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
