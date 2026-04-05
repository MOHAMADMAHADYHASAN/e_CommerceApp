import 'package:flutter/material.dart';

import '../../../../../common/widgets/appBar/app_bar.dart';
import '../../../../../common/widgets/products/cart/cart_counter_icon.dart';
import '../../../../../common/widgets/textFields/search_bar.dart';
import '../../../../../utils/constants/uColors.dart';
import '../../../../../utils/constants/uSize.dart';
import '../../../../../common/widgets/customShape/primary_header_container.dart';
class UStorePrimaryHeader extends StatelessWidget {
  const UStorePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Total height + 20
        SizedBox(height: USizes.storePrimaryHeaderHeight+10),

        //Primary header Container
        UPrimaryHeaderContainer(
          height: USizes.storePrimaryHeaderHeight,
          child: UAppBar(
            title: Text(
              "Store",
              style: Theme.of(context).textTheme.headlineMedium!
                  .apply(color: UColors.white),
            ),
            actions: [UCartCounterIcon()],
          ),
        ),
        //Searchbar
        USearchBar(),
      ],
    );
  }
}
