import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/themes/colors.dart';
import 'package:market/features/home/data/category_model.dart';
import 'package:market/features/home/data/product_model.dart';
import 'package:market/features/home/ui/views/widgets/product_item.dart';
import 'package:market/features/home/ui/views/widgets/serach_field.dart';

import 'widgets/brand_item.dart';
import 'widgets/category_item.dart';
import 'widgets/custom_row.dart';
import 'widgets/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15),
            child: Column(
              children: [
                const HomeAppBar(),
                const SerachField(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Image.asset(Assets.assetsImagesOffer1),
                ),
                const CustomRow(
                  title: 'Popular Products',
                ),
                SizedBox(
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
                ),
                const CustomRow(
                  title: 'Category',
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  //clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      // mainAxisSpacing: ,
                      crossAxisSpacing: 10,
                      childAspectRatio: 105 / 125),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryItem(categoryModel: categories[index]);
                  },
                ),
                const CustomRow(
                  title: 'Best for You 💙',
                ),
                SizedBox(
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
                ),
                const CustomRow(
                  title: 'Brands',
                ),
                const BrandItem()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
