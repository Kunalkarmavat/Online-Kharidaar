import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ok/common/widgets/appbar/appbar.dart';
import 'package:ok/utils/constants/colors.dart';

class AapBar extends StatelessWidget {
  const AapBar({super.key});

  // Variables
  final String _greetingText = "Good day for shopping ";
  final String _username = "Kunal Karmavat";
  final double _greetingFontSize = 14;
  final double _usernameFontSize = 20;
  final double _iconSize = 24;

  @override
  Widget build(BuildContext context) {
    return OkAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _greetingText,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontFamily: 'Roboto',
              color: OkColors.textSecondary,
              fontSize: _greetingFontSize,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
          Text(
            _username,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontFamily: 'Roboto',
              color: OkColors.textPrimary,
              fontSize: _usernameFontSize,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.8,
            ),
          ),
        ],
      ),
      actions: [
        // Heart Icon
        IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.heart,
            size: _iconSize,
            color: OkColors.dark,
          ),
        ),

        // Cart Icon with Badge
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.bag_24,
                size: _iconSize,
                color: OkColors.dark,
              ),
            ),
            Positioned(
              right: 2,
              top: 8,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: OkColors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    '2',
                    style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: OkColors.textDarkSecondary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
