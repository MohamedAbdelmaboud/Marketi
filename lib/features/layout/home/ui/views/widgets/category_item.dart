import 'package:flutter/material.dart';
import 'package:market/core/themes/colors.dart';
import 'package:market/core/themes/styles.dart';
import 'package:market/features/home/data/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryItem({
    Key? key,
    required this.categoryModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: 105,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffD9E6FF), width: 2),
            borderRadius: BorderRadius.circular(14),
            color: const Color(0xFFFFFFFF),
          ),
          child: Image.asset(
            categoryModel.imagePath,
            height: 80,
          ),
        ),
        Text(
          categoryModel.title,
          style: Styles.textStyle14.copyWith(
            color: myBlue,
          ),
        )
      ],
    );
  }
}
