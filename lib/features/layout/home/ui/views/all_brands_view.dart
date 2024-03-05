import 'package:flutter/material.dart';
import 'package:market/features/Auth/otp/ui/views/widgets/app_bar.dart';
import 'package:market/features/layout/home/data/brand_model.dart';
import 'package:market/features/layout/home/ui/views/widgets/brand_item.dart';

class AllBrandsView extends StatelessWidget {
  const AllBrandsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(
          context,
          'All Brands',
        ),
        body: const Padding(
            padding: EdgeInsets.all(15.0), child: BrandsGridView()));
  }
}

class BrandsGridView extends StatelessWidget {
  const BrandsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      clipBehavior: Clip.none,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: brands.length,
      itemBuilder: (BuildContext context, int index) {
        return BrandItem(
          brandModel: brands[index],
        );
      },
    );
  }
}
