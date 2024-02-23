import 'package:flutter/material.dart';
import 'package:market/core/constants/colors.dart';

import '../../../../../../core/widgets/componants/custom_text.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key, required this.upperText, required this.customTextFromField,});
final String upperText;
final CustomTextFromField customTextFromField;
  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              children: [
                CustomText(
                  text: upperText,
                  fontSize: 12,
                  color:mainColor,
                ),
              ],
            ),
          ),
          customTextFromField,
        ],
      ),
    );
  }
  }