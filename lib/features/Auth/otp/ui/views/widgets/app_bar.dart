import 'package:flutter/material.dart';
import 'package:market/core/themes/colors.dart';
import 'package:market/core/themes/styles.dart';

PreferredSizeWidget appBar(BuildContext context, String title) {
  return AppBar(
    title: Text(title, style: Styles.textStyle20.copyWith(color: seconderyColor)),
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 30,
        height: 30,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: navyColor),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: const Color(0xff001640),
        ),
      ),
    ),
  );
}
