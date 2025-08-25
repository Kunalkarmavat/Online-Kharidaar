import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ok/common/widgets/appbar/appbar.dart';
import 'package:ok/utils/constants/colors.dart';
import 'package:ok/utils/constants/sizes.dart';
import 'package:ok/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  // Variables
  final double _bannerHeight = 170;
  final int _bannerCount = 3;
  final double _dotHeight = 8;
  final double _dotWidth = 12;
  final double _expansionFactor = 3;
  final Duration _animationDuration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ************************* AppBar  ****************
            const AapBar(),
            const SizedBox(height: OkSizes.spaceBtwItems),

            const SearchContainer(),
            // ************************* Search bar  ****************
            const SizedBox(height: OkSizes.spaceBtwSections),

            // ************************* Banner Carousel ****************
            SizedBox(
              height: _bannerHeight,
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

            // ************************* SmoothPageIndicator ****************
            SmoothPageIndicator(
              controller: _pageController,
              count: _bannerCount,
              onDotClicked: (index) {
                _pageController.animateToPage(
                  index,
                  duration: _animationDuration,
                  curve: Curves.easeInOut,
                );
              },
              effect: ExpandingDotsEffect(
                activeDotColor: OkColors.dashboardAppbarBackground,
                dotColor: Colors.grey.shade300,
                dotHeight: _dotHeight,
                dotWidth: _dotWidth,
                expansionFactor: _expansionFactor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BannerItem extends StatelessWidget {
  final String imagePath;
  const BannerItem({super.key, required this.imagePath});

  // Variables
  final double _borderRadius = 16;
  final double _margin = 16;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: _margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    this.text = 'Search in Store',
    this.icon = Iconsax.search_normal,
  });

  // Properties
  final String text;
  final IconData? icon;

  // Variables
  final double _iconSize = 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: OkSizes.defaultSpace),
      child: Container(
        width: OkDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(OkSizes.md),
        decoration: BoxDecoration(
          color: OkColors.white,
          borderRadius: BorderRadius.circular(OkSizes.cardRadiusLg),
          border: Border.all(color: OkColors.grey),
        ),
        child: Row(
          children: [
            Icon(icon, size: _iconSize, color: OkColors.darkerGrey),
            const SizedBox(width: OkSizes.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: OkColors.textSecondary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class AapBar extends StatelessWidget {
  const AapBar({super.key});

  // Variables
  final String _greetingText = "Good day for shopping ";
  final String _username = "Tushar Karmavat";
  final double _greetingFontSize = 14;
  final double _usernameFontSize = 20;
  final double _iconSize = 24;

  @override
  Widget build(BuildContext context) {
    return OkAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _greetingText,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontFamily: 'Roboto',
                  color: OkColors.textSecondary,
                  fontSize: _greetingFontSize,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
          ),
          Text(
            _username,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontFamily: 'Roboto',
                  color: OkColors.textPrimary,
                  fontSize: _usernameFontSize,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.8,
                ),
          ),
        ],
      ),
      actions: [
        // Heart Icon
        IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.heart,
            size: _iconSize,
            color: OkColors.iconSecondaryDark,
          ),
        ),

        // Cart Icon with Badge
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.bag_24,
                size: _iconSize,
                color: OkColors.iconSecondaryDark,
              ),
            ),
            Positioned(
              right: 2,
              top: 8,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: OkColors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    '2',
                    style: Theme.of(context).textTheme.labelLarge!.apply(
                          color: OkColors.textDarkSecondary,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
