import 'package:flutter/material.dart';
import 'package:market/core/themes/colors.dart';
import 'package:market/core/themes/styles.dart';

class CustomRow extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const CustomRow({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.textStyle18.copyWith(
            color: seconderyColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'View all',
            style: Styles.textStyle16.copyWith(color: primaryColor),
          ),
        )
      ],
    );
  }
}
