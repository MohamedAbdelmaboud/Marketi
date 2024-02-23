import 'package:flutter/material.dart';
import 'package:market/core/themes/colors.dart';
import 'package:market/core/themes/styles.dart';
import 'package:market/features/home/ui/views/home_view.dart';
import 'package:market/features/home/ui/views/widgets/favourite_button.dart';

import 'add_button.dart';
import 'discount_container.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: lightBlue.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: lightBlue.withOpacity(0.8),
                    ),
                    child: Image.asset(
                      'assets/images/Air_Buds_Pic.png',
                    ),
                  ),
                  const Visibility(visible: false, child: DiscountContainer()),
                  const Positioned(
                    right: 5,
                    top: 5,
                    child: FavouriteButton())
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '799 LE',
                  style: Styles.textStyle12.copyWith(
                    color: seconderyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      '4.9',
                      style: Styles.textStyle12.copyWith(
                        color: seconderyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                children: [
                  Text(
                    'Black JBL Airbods',
                    style: Styles.textStyle12.copyWith(
                      color: seconderyColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const AddButton()
          ],
        ),
      ),
    );
  }
}
