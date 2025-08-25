import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ok/features/authentication/screens/signup/verify_email.dart';
import 'package:ok/utils/constants/sizes.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    prefixIcon: Icon(Iconsax.user),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: OkSizes.spaceBtwItems),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    prefixIcon: Icon(Iconsax.user),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: OkSizes.spaceBtwInputFields),
    
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'Username',
              prefixIcon: Icon(Iconsax.user_edit),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: OkSizes.spaceBtwInputFields),
    
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'E-Mail',
              prefixIcon: Icon(Iconsax.direct_right),
              border: OutlineInputBorder(),
            ),
          ),
    
          const SizedBox(height: OkSizes.spaceBtwInputFields),
    
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              prefixIcon: Icon(Iconsax.call),
              border: OutlineInputBorder(),
            ),
          ),
    
          const SizedBox(height: OkSizes.spaceBtwInputFields),
    
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(Iconsax.password_check),
              border: OutlineInputBorder(),
            ),
          ),
    
          const SizedBox(height: OkSizes.spaceBtwInputFields),
    
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {
                  // Handle checkbox state change
                },
              ),
              SizedBox(width: OkSizes.spaceBtwItems),
    
              Text.rich(
                TextSpan(
                  text: 'I agree to ',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Terms of Service',
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle Terms of Service tap
                        },
                    ),
                    const TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(VerifyEmailScreen());
                          // Handle Privacy Policy tap
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
    
          const SizedBox(height: OkSizes.spaceBtwSections),
    
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
              },
              child: const Text('Create Account'),
            ),
          ),
          const SizedBox(height: OkSizes.spaceBtwSections),
    
          // * Other Signup Options ( Google, Facebook, etc. )
    
    
        ],
      ),
    );
  }
}
