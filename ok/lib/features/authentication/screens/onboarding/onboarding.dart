import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ok/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:ok/features/authentication/screens/widgets/circular_button.dart';
import 'package:ok/features/authentication/screens/widgets/onboarding_dot_navigation.dart';
import 'package:ok/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:ok/features/authentication/screens/widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal ,scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: "assets/images/onboarding/box.png",
                title: "Welcome to OK",
                description:
                    "Your one-stop solution for all your needs. Explore, connect, and enjoy a seamless experience.",
              ),
              
              OnBoardingPage(
                image: "assets/images/onboarding/express-delivery.png",
                
                title: "Discover Features",
                description:
                    "From shopping to socializing, discover features that make your life easier and more enjoyable.",
              ),
              OnBoardingPage(
                image: "assets/images/onboarding/unboxing.png",
                title: "Join the Community",
                description:
                    "Connect with like-minded individuals and be part of a vibrant community.",
              ),
            ],
          ),

          // Skip button
          OnboardingSkipButton(),

          // Dot Navigation smoothPageIndicator
          OnBoardingDotNavigationBarHeight(),

          // Circular button
          CircularButton(),

          //
        ],
      ),
    );
  }
}
