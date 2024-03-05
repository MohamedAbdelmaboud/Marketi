import 'package:flutter/material.dart';
import 'package:market/core/themes/colors.dart';
import 'package:market/core/themes/styles.dart';
import 'package:market/features/Auth/otp/ui/views/widgets/app_bar.dart';
import 'package:market/features/layout//home/data/product_model.dart';
import 'package:market/features/layout//home/ui/views/widgets/serach_field.dart';

import 'widgets/product_item.dart';
import 'widgets/products_grid_view.dart';

class PopularProductView extends StatelessWidget {
  const PopularProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context, 'Popular Product', visible: false),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SerachField(),
              Text(
                'All Products',
                style: Styles.textStyle18.copyWith(color: seconderyColor),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: ProductsGridView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
