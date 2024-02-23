import 'package:flutter/material.dart';
import 'package:market/core/constants/colors.dart';
import 'package:market/core/widgets/componants/custom_text.dart';

PreferredSizeWidget appBar(BuildContext context, String title) {
  return AppBar(
    title: CustomText(text: title, fontSize: 16, color: navyColor),
    backgroundColor: Colors.white,
    elevation: 0,
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
