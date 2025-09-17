import 'package:flutter/material.dart';
import 'package:ok/common/widgets/header_section.dart';
import 'package:ok/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ok/common/widgets/search_container.dart';
import 'package:ok/features/shop/screen/home/widgets/appbar_home.dart';
import 'package:ok/features/shop/screen/home/widgets/banner_section.dart';
import 'package:ok/features/shop/screen/home/widgets/benefit.dart';
import 'package:ok/features/shop/screen/home/widgets/categories.dart';
import 'package:ok/features/shop/screen/home/widgets/filter_toolbar.dart';
import 'package:ok/utils/constants/sizes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* AppBar
            const AapBar(),
            const SizedBox(height: OkSizes.spaceBtwItems),

            //* Search bar
            const SearchContainer(),
            const SizedBox(height: OkSizes.spaceBtwSections),

            //* delivery Instruction
            BenefitRow(),
            const SizedBox(height: OkSizes.spaceBtwItems),

            //* Heading - Popular Categories
            OkSectionHeading(
              title: 'Popular Categories',
              showActionButton: true,
            ),

            // * Categories List
            Categories(),

            // * Heading - Banner
            SizedBox(
              height: 170,
              child: PageView(
                controller: _pageController,
                children: const [
                  BannerItem(imagePath: "assets/images/banner/banner1.png"),
                  BannerItem(imagePath: "assets/images/banner/banner2.png"),
                  BannerItem(imagePath: "assets/images/banner/banner3.png"),
                ],
              ),
            ),
            const SizedBox(height: OkSizes.spaceBtwItems),

            // * Sort, Filter and Gender Bar
            OkFilterToolbar(),

            GridView.builder(
              itemCount: 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                crossAxisCount: 2,
                mainAxisExtent: 420,
              ),
              itemBuilder: (_, index) => ProductCardVertical(),
            ),
          ],
        ),
      ),
    );
  }
}
