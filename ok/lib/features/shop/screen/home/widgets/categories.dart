import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ok/utils/constants/colors.dart';

class Categories extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {"title": "Categories", "icon": Iconsax.element_4},
    {
      "title": "Kurti & Dresses",
      "image":
          "https://plus.unsplash.com/premium_photo-1682097935697-2ed1efce421a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8a3VydGklMjBhbmQlMjBkcmVzc2VzfGVufDB8fDB8fHww",
    },
    {
      "title": "Westernwear",
      "image":
          "https://plus.unsplash.com/premium_photo-1673758905770-a62f4309c43c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bW9kZWx8ZW58MHx8MHx8fDA%3D",
    },
    {
      "title": "Home",
      "image":
          "https://images.unsplash.com/photo-1757416654883-c73c67b3382b?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "title": "Men Clothing",
      "image":
          "https://images.unsplash.com/photo-1500163547739-bf7a4c7d6c6e?auto=format&fit=crop&w=80&q=80",
    },
    {
      "title": "Saree",
      "image":
          "https://images.unsplash.com/photo-1505751172876-fa1923c5c528?auto=format&fit=crop&w=80&q=80",
    },
    {
      "title": "Beauty",
      "image":
          "https://images.unsplash.com/photo-1501004318641-b39e6451bec6?auto=format&fit=crop&w=80&q=80",
    },
    {
      "title": "Jewellery",
      "image":
          "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?auto=format&fit=crop&w=80&q=80",
    },
    {
      "title": "Kitchen",
      "image":
          "https://images.unsplash.com/photo-1495462917860-19a78e6a5b1d?auto=format&fit=crop&w=80&q=80",
    },
    {
      "title": "Accessories",
      "image":
          "https://images.unsplash.com/photo-1478145046317-39f10e56b5e9?auto=format&fit=crop&w=80&q=80",
    },
    {
      "title": "Footwear",
      "image":
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=80&q=80",
    },
    {
      "title": "Innerwear",
      "image":
          "https://images.unsplash.com/photo-1525975764624-5b7d20f3f26b?auto=format&fit=crop&w=80&q=80",
    },
    {
      "title": "Electronics",
      "image":
          "https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=80&q=80",
    },
  ];

  Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final bool isIcon = category.containsKey("icon");

          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    gradient: isIcon
                        ? const LinearGradient(
                            colors: [Color(0xFFF9B2DD), Color(0xFFFBA3A3)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )
                        : null,
                    color: isIcon ? null : Colors.white,
                    shape: BoxShape.circle,
                    border: isIcon
                        ? null
                        : Border.all(
                            color: Colors.grey.withOpacity(0.2),
                            width: 1.1,
                          ),
                  ),
                  child: isIcon
                      ? Center(
                          child: Icon(
                            category["icon"] as IconData,
                            size: 32,
                            color: const Color(0xFFE839AE),
                          ),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            category["image"]!,
                            fit: BoxFit.cover,
                            height: 56,
                            width: 56,
                          ),
                        ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 70,
                  child: Text(
                    category["title"]!,
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium!.apply(color: OkColors.textPrimary),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
