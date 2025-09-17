import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  final String imagePath;
  const BannerItem({super.key, required this.imagePath});

  // Variables
  final double _borderRadius = 16;
  final double _margin = 16;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}