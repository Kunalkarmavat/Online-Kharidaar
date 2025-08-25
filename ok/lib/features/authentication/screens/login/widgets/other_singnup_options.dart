import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ok/features/authentication/screens/signup/verify_email.dart';
import 'package:ok/utils/constants/colors.dart';
import 'package:ok/utils/constants/sizes.dart';

class OtherSignupOptions extends StatelessWidget {
  const OtherSignupOptions({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        
        // * Divider with text
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Divider(
                color: dark ? OkColors.white : OkColors.darkGrey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5,
              ),
            ),
            const SizedBox(width: OkSizes.spaceBtwItems),
            const Text('Or continue with'),

            Flexible(
              child: Divider(
                color: dark ? OkColors.white : OkColors.darkGrey,

                thickness: 0.5,
                indent: 5,
                endIndent: 60,
              ),
            ),
          ],
        ),

        const SizedBox(height: OkSizes.spaceBtwItems),

        // * Social Media Sign Up Options
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: OkColors.grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {
                  Get.to(() => const VerifyEmailScreen());
                },
                icon: const Image(
                  width: OkSizes.iconMd,
                  height: OkSizes.iconMd,
                  image: AssetImage('assets/logos/google-logo.png'),
                ), // Image
              ), // IconButton
            ), // Container
            const SizedBox(width: OkSizes.spaceBtwItems),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: OkColors.grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {
                Get.to(() => const VerifyEmailScreen());
            
                },
                icon: const Image(
                  width: OkSizes.iconMd,
                  height: OkSizes.iconMd,
                  image: AssetImage('assets/logos/facebook-logo.png'),
                ), // Image
              ), // IconButton
            ),
          ],
        ),
      ],
    );
  }
}
