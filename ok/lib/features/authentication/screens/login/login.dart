import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:ok/features/authentication/controller/auth_controller.dart';

import 'package:ok/features/authentication/screens/login/widgets/other_singnup_options.dart';

import 'package:ok/features/authentication/screens/login/Success_screen/otp_input_field.dart';

import 'package:ok/features/authentication/screens/login/widgets/phone_input_field.dart';

import 'package:ok/utils/constants/sizes.dart';

import 'package:ok/utils/helpers/helper_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OkHelperFunctions.isDarkMode(context);

    final controller = Get.put(AuthController());

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(OkSizes.defaultSpace),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const SizedBox(height: OkSizes.spaceBtwSections),

            // ******************** App Logo **********************

            // Center(
            //   child: Image(
            //     width: OkHelperFunctions.screenWidth() * 0.6,
            //     height: OkHelperFunctions.screenHeight() * 0.4,
            //     image: const AssetImage(
            //       'assets/images/login/hourglass.png',
            //     ),
            //   ),
            // ),
                      

            const SizedBox(height: OkSizes.spaceBtwSections),

            /// Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter your phone number',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontFamily: 'Roboto', // Use Poppins fontR
                  fontWeight: FontWeight.w800, // SemiBold (optional)
                ),
              ),
            ),
            const SizedBox(height: OkSizes.sm),

            /// Phone Input with +91
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "🇮🇳 +91",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: PhoneInputField(),
                ), 
              ],
            ),

            const SizedBox(height: OkSizes.spaceBtwSections),

            /// Send OTP Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const OTPScreen());
                },
                child: const Text('Send OTP'),
              ),
            ),

            /// Other Option  for SignUp
            const SizedBox(height: OkSizes.spaceBtwSections),

            OtherSignupOptions(dark: dark),
          ],
        ),
      ),
    );
  }
}
