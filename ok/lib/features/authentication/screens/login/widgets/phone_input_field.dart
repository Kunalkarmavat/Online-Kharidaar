import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ok/features/authentication/controller/auth_controller.dart';

class PhoneInputField extends StatelessWidget {
  const PhoneInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();

    return TextField(
      keyboardType: TextInputType.phone,
      onChanged: (value) => controller.phoneNumber.value = value,
      decoration: const InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        prefixIcon: Icon(Iconsax.call),
      ),
    );
  }
}
