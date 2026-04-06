import "package:e_commerce/common/style/padding.dart";
import "package:e_commerce/common/widgets/appBar/app_bar.dart";
import "package:e_commerce/common/widgets/button/u_elevated_button.dart";
import "package:e_commerce/utils/constants/uSize.dart";
import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";

class UAddNewScreen extends StatelessWidget {
  const UAddNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //-----------[App bar]
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          "Add New Address",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              //Name--
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: "Name",
                ),
              ),
              SizedBox(height: USizes.spaceBtwInputFields),
              //Phone Number--
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.call),
                  labelText: "Phone Number",
                ),
              ),
              SizedBox(height: USizes.spaceBtwInputFields),

              Row(
                children: [
                  //Street--
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.building_31),
                        labelText: "Street",
                      ),
                    ),
                  ),
                  SizedBox(width: USizes.spaceBtwInputFields / 2),

                  //Postal Code--
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.code),
                        labelText: "Postal Code",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: USizes.spaceBtwInputFields),

              Row(
                children: [
                  //City--
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.building_34),
                        labelText: "City",
                      ),
                    ),
                  ),
                  SizedBox(width: USizes.spaceBtwInputFields / 2),

                  //State--
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.activity),
                        labelText: "State",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: USizes.spaceBtwInputFields),

              //Country--
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.global),
                  labelText: "Country",
                ),
              ),
              SizedBox(height: USizes.spaceBtwSections),

              //Elevated Button--
              UElevatedButton(onPressed: () {}, child: Text("Save")),
            ],
          ),
        ),
      ),
    );
  }
}
