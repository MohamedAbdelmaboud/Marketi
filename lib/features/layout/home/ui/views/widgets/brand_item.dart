import 'package:flutter/material.dart';
import 'package:market/core/themes/colors.dart';
import 'package:market/features/layout/home/data/brand_model.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({
    required this.brandModel,
    Key? key,
  }) : super(key: key);

  final BrandModel brandModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: 120,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 3),
          )
        ],
        border: Border.all(color: const Color(0xffD9E6FF), width: 2),
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xFFFFFFFF),
      ),
      child: Image.asset(
        brandModel.imagePath,
       
      ),
    );
  }
}
