import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ok/common/images/ok_rounded_images.dart';
import 'package:ok/common/widgets/products/product_cards/product_container.dart';
import 'package:ok/utils/constants/colors.dart';
import 'package:ok/utils/constants/sizes.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: OkColors.white,
        borderRadius: BorderRadius.circular(OkSizes.md),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image, Favorite Button
          Stack(
            children: [
              OkRoundedImage(
                imageUrl: 'assets/images/categories/kurti.png',
                width: double.infinity,
                applyImageRadius: false,
              ),
              // Wishlist Icon (smaller width)
              Positioned(
                top: 16,
                right: 12,
                child: Container(
                  decoration: BoxDecoration(
                    color: OkColors.white.withOpacity(0.9),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: SizedBox(
                    width: 32,
                    height: 32,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 20,
                      icon: Icon(Iconsax.heart),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Horizontal padding for details section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  "Generic Flowers (Live Plants)",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                // Price Row
                Row(
                  children: [
                    Text(
                      "₹98",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "₹153",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            decoration: TextDecoration.lineThrough,
                            color: OkColors.darkGrey,
                          ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        "36% off",
                        style: TextStyle(
                          color: Colors.green[700],
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                // Free delivery
                Text(
                  "Free Delivery",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: 8),
                // Rating
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.amber[700],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "3",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Icon(Icons.star, color: Colors.white, size: 14),
                        ],
                      ),
                    ),
                    SizedBox(width: 7),
                    Text(
                      "(4)",
                      style: TextStyle(
                        color: OkColors.darkGrey,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
