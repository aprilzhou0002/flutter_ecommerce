import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/utils/device/device_utility.dart';

import '../../../../common/widgets/products/rating/rating_indicator.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/progress_indicator_and_rating.dart';
import 'widgets/rating_progress_indicator.dart';
import 'widgets/user_review_card.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- Appbar
      appBar: const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      // -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and Reviews are verified and are from people who use the same type of device thath you use.'),
              const SizedBox(height: TSizes.spaceBtwItems),
          
              // Overall Product Ratins
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5,),
              Text("12, 611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              // User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}





