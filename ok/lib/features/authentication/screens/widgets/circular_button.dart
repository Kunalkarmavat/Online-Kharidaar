import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ok/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:ok/utils/constants/colors.dart';
import 'package:ok/utils/constants/sizes.dart';
import 'package:ok/utils/device/device_utility.dart';
import 'package:ok/utils/helpers/helper_function.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OkHelperFunctions.isDarkMode(context);

    return Positioned(
      right: OkSizes.defaultSpace,
      bottom: OkDeviceUtils.getBottomNavigationBarHeight(context),
      child: ElevatedButton(
        onPressed: () {
          OnboardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),        // No border
          elevation: 0,                       // No shadow
          backgroundColor: dark ? OkColors.white : OkColors.dark,
          side: BorderSide.none,              // No border line
          padding: const EdgeInsets.all(18),  // Add padding for better size
        ),
        child: Icon(
          Iconsax.arrow_right_3,
          size: 30,
          color: dark ? OkColors.black : OkColors.white,
        ),
      ),
    );
  }
}
