import 'package:flutter/material.dart';
import 'package:market/core/widgets/componants/custom_text.dart';
import 'package:market/core/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: const EdgeInsets.all(14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        fixedSize: const Size(347, 53),
      ),
      onPressed: onPressed,
      child: CustomText(
        text: text,
        color: Colors.white,
        fontSize: 14,
      ),
    );
  }
}
