import 'package:flutter/material.dart';
import 'package:ok/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:ok/utils/constants/colors.dart';
import 'package:ok/utils/constants/sizes.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: OkSizes.defaultSpace,
      right: OkSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () {
          OnboardingController.instance.skipPage();
        },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: OkColors.cardBackgroundColor, // Keep if you want color fill
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          elevation: 0, // Optional: remove shadow
          side: BorderSide.none, // <- No border
        ),
        child: const Text('Skip',
      style: TextStyle(
          color: OkColors.disabledTextDark, // Text color
          fontSize: 16, // Font size
          fontWeight: FontWeight.w600, // Font weight
      ),
        ),
      ),
    );
  }
}
