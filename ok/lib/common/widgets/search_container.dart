
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ok/utils/constants/colors.dart';
import 'package:ok/utils/constants/sizes.dart';
import 'package:ok/utils/device/device_utility.dart';



class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    this.text = 'Search in Store',
    this.icon = Iconsax.search_normal,
  });

  // Properties
  final String text;
  final IconData? icon;

  // Variables
  final double _iconSize = 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: OkSizes.defaultSpace),
      child: Container(
        width: OkDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(OkSizes.md),
        decoration: BoxDecoration(
          color: OkColors.white,
          borderRadius: BorderRadius.circular(OkSizes.cardRadiusLg),
          border: Border.all(color: OkColors.grey),
        ),
        child: Row(
          children: [
            Icon(icon, size: _iconSize, color: OkColors.darkerGrey),
            const SizedBox(width: OkSizes.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: OkColors.textSecondary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
