import 'package:get/get.dart';
import 'package:ok/features/authentication/screens/login/Success_screen/otp_input_field.dart';
import 'package:ok/navigation_menu.dart';

class AuthController extends GetxController {
  var phoneNumber = ''.obs;
  var otpCode = ''.obs;

  void sendOTP() {
    if (phoneNumber.value.length < 10) {
      Get.snackbar("Error", "Enter a valid phone number");
      return;
    }

    // Simulate sending OTP
    Get.snackbar("OTP Sent", "OTP sent to ${phoneNumber.value}");
    Get.to(() => const OTPScreen());
  }

  void verifyOTP() {
    if (otpCode.value.length != 6) {
      Get.snackbar("Error", "Enter a valid 6-digit OTP");
      return;
    }

    // Simulate verification success
    Get.snackbar("Success", "OTP Verified");
    Get.off(() => const NavigationMenu());
  }
}
