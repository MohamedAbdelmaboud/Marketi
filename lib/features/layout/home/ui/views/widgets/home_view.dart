import 'package:flutter/material.dart';
import 'package:market/features/home/data/brand_model.dart';
import 'package:market/features/home/ui/views/widgets/brand_item.dart';

class BrandsListView extends StatelessWidget {
  const BrandsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => const SizedBox(
          width: 5,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        itemBuilder: (context, index) => BrandItem(
          brandModel: brands[index],
        ),
      ),
    );
  }
}
