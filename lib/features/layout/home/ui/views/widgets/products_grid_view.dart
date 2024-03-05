import 'package:flutter/material.dart';
import 'package:market/features/layout/home/data/product_model.dart';
import 'package:market/features/layout/home/ui/views/widgets/product_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    this.physics,
  });
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      clipBehavior: Clip.none,
      shrinkWrap: true,
      physics: physics ?? const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 165 / 190,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ProductItem(
          productModel: products[index],
        );
      },
    );
  }
}
