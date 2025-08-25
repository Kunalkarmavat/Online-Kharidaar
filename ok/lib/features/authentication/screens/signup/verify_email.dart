import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ok/features/authentication/screens/login/Success_screen/otp_input_field.dart';
import 'package:ok/features/authentication/screens/login/Success_screen/success_screen.dart';
import 'package:ok/utils/constants/sizes.dart';
import 'package:ok/utils/helpers/helper_function.dart' show OkHelperFunctions;
import 'package:ok/utils/helpers/helper_function.dart';
import 'package:ok/utils/theme/custom_themes/outlined_button_theme.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OkHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.clear),
            onPressed: () {
                  Get.to(() => const OTPScreen());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OkSizes.defaultSpace),
          child: Column(
            children: [
              // * Image
              Image(
                width: OkHelperFunctions.screenWidth() * 0.8,

                height: OkHelperFunctions.screenHeight() * 0.4,
                image: AssetImage(
                  'assets/images/onboarding/express-delivery.png',
                ),
              ),

              // * Verify Email Text
              Text(
                'Verify Your Email Address',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: OkSizes.spaceBtwItems),

              // * support@codingwith
              Text(
                'support@codingwith',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: OkSizes.spaceBtwItems),

              Text(
                'A verification link has been sent to your email address. Please check your inbox and click the link to verify your account.',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: OkSizes.spaceBtwSections),

              // * Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const SuccessScreen());
                  },
                  child: const Text('Continue'),
                ),
              ),
              const SizedBox(height: OkSizes.spaceBtwItems),

              // * Create Account Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  style: dark
                      ? OkOutlinedButtonTheme.darkOutlinedButtonTheme.style
                      : OkOutlinedButtonTheme.lightOutlinedButtonTheme.style,
                  child: const Text('Resend Email'),
                ),
              ),

              // Add a button to resend the verification email
            ],
          ),
        ),
      ),
    );
  }
}
