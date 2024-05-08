import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 4,  
            separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections), 
            itemBuilder: (_, index) => Column(
              children: [
                Row(
                  children: [
                    // Image
                    TRoundedImage(
                      imageUrl: TImages.productImage1,
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(TSizes.sm),
                      backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems),

                    // Title, Price & Size
                    Column(
                      children: [
                        TBrandTitleWithVerifiedIcon(title: title)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}