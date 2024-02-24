import 'package:flutter/material.dart';
import 'package:market/core/themes/colors.dart';
import 'package:market/core/themes/styles.dart';
import 'package:market/features/Auth/otp/ui/views/widgets/app_bar.dart';
import 'package:market/features/home/data/product_model.dart';
import 'package:market/features/home/ui/views/widgets/serach_field.dart';

import 'widgets/product_item.dart';

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
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
