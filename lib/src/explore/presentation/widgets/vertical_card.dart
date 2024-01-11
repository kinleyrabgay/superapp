import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superbt/core/common/widget/icons/sa_circular_icon.dart';
import 'package:superbt/core/common/widget/sa_rounded_image.dart';
import 'package:superbt/core/common/widget/text/product_price.dart';
import 'package:superbt/core/common/widget/text/product_titile.dart';
import 'package:superbt/core/utils/constants/colors.dart';
import 'package:superbt/core/utils/constants/shadows.dart';
import 'package:superbt/core/utils/constants/sizes.dart';
import 'package:superbt/src/explore/presentation/widgets/rounded_container.dart';

class VerticalItemCard extends StatelessWidget {
  final Map<String, dynamic> productData;
  const VerticalItemCard({super.key, required this.productData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        // width: 150,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          boxShadow: [SAShadowStyle.verticalItemShadow],
          borderRadius: BorderRadius.circular(SASizes.productImageRadius),
          color: SAColors.whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail, Whitlist Button & Discount Tag
            RoundedContainer(
              // height : 150
              height: MediaQuery.of(context).size.height * 0.15,
              padding: const EdgeInsets.all(SASizes.sm),
              radius: SASizes.cardRadiusLg,
              showBorder: false,
              borderColor: SAColors.borderPrimary,
              backgroundColor: SAColors.whiteColor,
              child: Stack(
                children: [
                  // Image
                  SARoundedImage(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 158,
                    imgUrl: productData['thumbnail'],
                    applyImageRadius: true,
                    backgroundColor: SAColors.whiteColor,
                    isNetworkImage: true,
                    boderRadius: SASizes.borderRadiusMd,
                    fit: BoxFit.contain,
                  ),

                  Positioned(
                    top: 3,
                    child: RoundedContainer(
                      radius: SASizes.sm,
                      showBorder: false,
                      borderColor: SAColors.borderPrimary,
                      backgroundColor: SAColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: SASizes.sm,
                        vertical: SASizes.xs,
                      ),
                      child: Text(
                        '${productData['discountPercentage']}%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: SAColors.black),
                      ),
                    ),
                  ),

                  // Favorite
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SACircularIcon(
                      icon: CupertinoIcons.heart_fill,
                      color: Colors.red,
                      backgroundColor: SAColors.darkGrayColor.withOpacity(0.1),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: SASizes.spaceBtwItems / 2,
            ),

            // Details
            Padding(
              padding: const EdgeInsets.only(left: SASizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: productData['title'],
                    smallSize: true,
                    maxLines: 1,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: SASizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        productData['brand'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: SASizes.xs),
                      const Icon(
                        Icons.verified,
                        size: SASizes.iconXs,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  // const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      SAProductPriceText(
                          currencySign: '\$',
                          price: productData['price'].toString(),
                          maxLines: 1,
                          isLarge: false,
                          lineThrough: false),
                      Container(
                        decoration: BoxDecoration(
                          color: SAColors.darkGrayColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(SASizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(SASizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: SASizes.iconLg * 1.2,
                          height: SASizes.iconLg * 1.2,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
