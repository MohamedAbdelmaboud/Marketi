import 'package:flutter/material.dart';
import 'package:market/features/home/data/product_model.dart';
import 'package:market/features/home/ui/views/widgets/product_item.dart';

class PopularListView extends StatelessWidget {
  const PopularListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => const SizedBox(
          width: 5,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) =>
            ProductItem(productModel: products[index]),
      ),
    );
  }
}
