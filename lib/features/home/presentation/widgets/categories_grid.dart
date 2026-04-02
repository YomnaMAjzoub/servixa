import 'package:flutter/material.dart';
import 'custom_categories.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key, required this.names, required this.icons});

  final List<String> names;
  final List<String> icons;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return CustomCategories(
          name: names[index],
          image: icons[index],
        );
      }, childCount: names.length),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 32,
        childAspectRatio: 1.5,
      ),
    );
  }
}
