import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ok/features/authentication/controller/auth_controller.dart';
import 'package:ok/utils/constants/sizes.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();

    return Scaffold(
      appBar: AppBar(
        
        automaticallyImplyLeading: true, // Disable back button
      ),
      body: Padding(
        padding: const EdgeInsets.all(OkSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter the 6-digit code sent to your phone',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: OkSizes.spaceBtwItems),

            /// OTP Input Field
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 6,
              onChanged: (value) => controller.otpCode.value = value,
              decoration: const InputDecoration(
                labelText: 'OTP Code',
                prefixIcon: Icon(Iconsax.verify),
              ),
            ),
            const SizedBox(height: OkSizes.spaceBtwItems),

            // Verify Button
            
            SizedBox(

              width: double.infinity,
              child: ElevatedButton(
                onPressed: controller.verifyOTP,
                child: const Text('Verify'),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
