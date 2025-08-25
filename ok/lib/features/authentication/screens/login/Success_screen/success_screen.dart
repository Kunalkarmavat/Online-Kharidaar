import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ok/navigation_menu.dart';
import 'package:ok/utils/constants/sizes.dart';
import 'package:ok/utils/helpers/helper_function.dart' show OkHelperFunctions;
import 'package:ok/utils/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = OkHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
       
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

              // * Success Text
              Text(
                
                'Your account successfully created!',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,

              ),

              SizedBox(height: OkSizes.spaceBtwItems),

              Text(
                
                'Welcome to our app! Please check your email for a verification link to activate your account. If you do not see the email, please check your spam folder.',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,

              ),

              SizedBox(height: OkSizes.spaceBtwSections),

              // * Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const NavigationMenu());
                  },
                  child: const Text('Continue'),
                ),
              ),
              const SizedBox(height: OkSizes.spaceBtwItems),

              // Add a button to resend the verification email
            ],
          ),
        ),
      ),
    );
    ;
  }
}
