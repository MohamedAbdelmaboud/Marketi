import 'package:flutter/material.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/routes/routes.dart';
import 'package:market/features/layout/home/ui/views/widgets/best_list_view.dart';
import 'package:market/features/layout/home/ui/views/widgets/categories_grid_view.dart';
import 'package:market/features/layout/home/ui/views/widgets/custom_row.dart';
import 'package:market/features/layout/home/ui/views/widgets/home_app_bar.dart';
import 'package:market/features/layout/home/ui/views/widgets/home_view.dart';
import 'package:market/features/layout/home/ui/views/widgets/popular_list_view.dart';
import 'package:market/features/layout/home/ui/views/widgets/serach_field.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              const PopularListView(),
              const CustomRow(
                title: 'Category',
              ),
              const CategoriesGridView(),
              const CustomRow(
                title: 'Best for You 💙',
              ),
              const BestListView(),
              CustomRow(
                title: 'Brands',
                onPressed: () {
                  Navigator.pushNamed(context, Routes.brands);
                },
              ),
              const BrandsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
