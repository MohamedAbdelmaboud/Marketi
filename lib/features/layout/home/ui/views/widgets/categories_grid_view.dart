import 'package:flutter/material.dart';
import 'package:market/features/layout/home/data/category_model.dart';
import 'package:market/features/layout/home/ui/views/widgets/category_item.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 10, childAspectRatio: 105 / 125),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return CategoryItem(categoryModel: categories[index]);
      },
    );
  }
}
