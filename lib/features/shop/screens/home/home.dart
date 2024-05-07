import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                // -- Appbar --
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections),

                // -- Searchbar --
                TSearchContainer(text: 'Search in Store'),
                SizedBox(height: TSizes.spaceBtwSections),

                // -- Categories --
                Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // -- Heading
                        TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBtwItems),

                        // -- Categories
                        THomeCategories()
                      ],
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}


