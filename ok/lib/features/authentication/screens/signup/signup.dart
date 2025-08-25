import 'package:flutter/material.dart';

import 'package:ok/features/authentication/screens/login/widgets/other_singnup_options.dart';
import 'package:ok/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ok/utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark ? Colors.white : Colors.black),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OkSizes.defaultSpace),
          child: Column(
            children: <Widget>[
              // * text
              Text(
                'Create an Account',
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: OkSizes.spaceBtwSections),

              // * Form
              SignupForm(),

              // * Facebook and Google singup options
              OtherSignupOptions(dark: dark),
            ],
          ),
        ),
      ),
    );
  }
}
