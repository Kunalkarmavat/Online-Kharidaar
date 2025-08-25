import 'package:flutter/material.dart';
import 'package:ok/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:ok/utils/constants/colors.dart';
import 'package:ok/utils/constants/sizes.dart';
import 'package:ok/utils/device/device_utility.dart';
import 'package:ok/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigationBarHeight extends StatelessWidget {
  const OnBoardingDotNavigationBarHeight({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = OkHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: OkDeviceUtils.getBottomNavigationBarHeight(context) + 25,
      left: OkSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? OkColors.white : OkColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
