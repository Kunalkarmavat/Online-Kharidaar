import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ok/features/authentication/screens/login/login.dart';

class OnboardingController extends GetxController {
 

    static OnboardingController get instance => Get.find();

    // Varibles
    final pageController = PageController();
    Rx<int> currentIndex = 0.obs;


    // update Current Index when page scroller
    void updatePageIndicator(int index) {
      currentIndex.value = index;
    }

    // Jump to the specific dot seleted page 
   void dotNavigationClick(int index){
    currentIndex.value = index;
    pageController.jumpToPage(index);
   }
   


    // Update Current Index & Jump to the specific dot selected page
    void nextPage() {
      if (currentIndex.value == 2) { 
        Get.to(LoginScreen()); // Assuming LoginScreen is the next screen
      } else {
     int page = currentIndex.value + 1;
        currentIndex.value = page;
        pageController.nextPage(
        duration : const Duration(milliseconds: 300), 
        curve: Curves.easeInOut);
        
       
      }
    }

    // Update Current Index & Jump to the last page 
    void skipPage() {
      currentIndex.value = 2; // Assuming there are 3 pages, index 2 is the last page
      pageController.jumpToPage(2);
    }


  
  
}


