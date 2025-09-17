
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ok/utils/constants/sizes.dart';


class OkFilterToolbar extends StatelessWidget {
  const OkFilterToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    const items = [
      {'icon': Icons.swap_vert, 'label': 'Sort'},    // Material icon
      {'icon': Iconsax.category, 'label': 'Category'},
      {'icon': Iconsax.user, 'label': 'Gender'},
      {'icon': Icons.filter_list, 'label': 'Filters'}, // Material icon
    ];
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border.symmetric(
          horizontal: BorderSide(color: Color(0xFFE1E1E1), width: 1),
        ),
      ),
      child: Row(
        children: List.generate(items.length, (i) {
          final item = items[i];
          return Expanded(
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                border: Border(
                  left: i == 0
                      ? BorderSide.none
                      : const BorderSide(color: Color(0xFFE1E1E1), width: 1),
                ),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(0, 48),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item['icon'] as IconData,
                        size: OkSizes.iconXs,
                        color: Colors.black87,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        item['label'] as String,
                        style: const TextStyle(
                          fontSize: OkSizes.fontSizeSm,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
