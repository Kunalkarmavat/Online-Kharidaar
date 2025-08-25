import 'package:flutter/material.dart';
import 'package:ok/utils/constants/sizes.dart';
import 'package:ok/utils/helpers/helper_function.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(OkSizes.defaultSpace),
      child: Column(
        children: [
          const SizedBox(height: 120),          
          // Horizontal Scrollable pages
          Image(
            width: OkHelperFunctions.screenWidth() * 0.8,
            height: OkHelperFunctions.screenHeight() * 0.4,
            image: AssetImage(image),
          ),

          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: OkSizes.spaceBtwItems),

          Text(
            description,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
