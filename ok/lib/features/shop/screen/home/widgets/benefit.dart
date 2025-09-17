import 'package:flutter/material.dart';
import 'package:ok/utils/constants/colors.dart';
import 'package:ok/utils/constants/sizes.dart';

class BenefitRow extends StatelessWidget {
  const BenefitRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFFFDECF4), // Light pink background
      ),
      child: Container(
        decoration: BoxDecoration(
          color: OkColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // 7 Days Easy Return
            Row(
              children: [
                Icon(
                  Icons.undo,
                  color: Colors.purple,
                  size: OkSizes.iconMd, // ✅ changed
                ),
                const SizedBox(width: OkSizes.sm), // ✅ changed
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '7 Days',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: OkSizes.fontSizeSm, // ✅ changed
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      'Easy Return',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: OkSizes.fontSizeSm, // ✅ changed
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // Divider
            Container(width: 2, height: 40, color: Colors.white),

            // Cash on Delivery
            Row(
              children: [
                Icon(
                  Icons.account_balance_wallet,
                  color: Colors.purple,
                  size: OkSizes.iconMd, // ✅ changed
                ),
                const SizedBox(width: OkSizes.sm), // ✅ changed
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cash on',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: OkSizes.fontSizeSm, // ✅ changed
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      'Delivery',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: OkSizes.fontSizeSm, // ✅ changed
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // Divider
            Container(width: 2, height: 40, color: Colors.white),

            // Lowest Price
            Row(
              children: [
                Icon(
                  Icons.local_offer,
                  color: Colors.purple,
                  size: OkSizes.iconMd, // ✅ changed
                ),
                const SizedBox(width: OkSizes.sm), // ✅ changed
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lowest',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: OkSizes.fontSizeSm, // ✅ changed
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      'Price',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: OkSizes.fontSizeSm, // ✅ changed
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
