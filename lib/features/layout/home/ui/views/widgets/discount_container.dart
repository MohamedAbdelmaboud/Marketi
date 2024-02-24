import 'package:flutter/material.dart';
import 'package:market/core/themes/colors.dart';
import 'package:market/core/themes/styles.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 86,
      height: 24,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5), bottomRight: Radius.elliptical(20, 4)),
        color: lightBlue.withOpacity(.65),
      ),
      child: const Text(
        '10% OFF',
        style: Styles.textStyle12,
      ),
    );
  }
}
