import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ok/features/shop/screen/home/home.dart';
import 'package:ok/utils/constants/colors.dart';
import 'package:ok/utils/constants/sizes.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey, width: 0.5), // 🔹 top border
            ),
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 10,   // 🔹 decreased label font size
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            child: NavigationBar(
              backgroundColor: OkColors.white,
              indicatorColor: OkColors.softGrey,
              height: 70,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (int index) {
                controller.selectedIndex.value = index;
              },
              destinations: const [
                NavigationDestination(
                  icon: Icon(Iconsax.home, size: OkSizes.iconMd),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.category, size:OkSizes.iconMd),
                  label: 'Categories',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.bag, size: OkSizes.iconMd),
                  label: 'My Orders',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.user, size: OkSizes.iconMd),
                  label: 'Account',
                ),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];
}
