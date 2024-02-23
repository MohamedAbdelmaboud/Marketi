import 'package:flutter/material.dart';
import 'package:market/core/widgets/componants/custom_text.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: const Color(0xff3F80FF)),
        child: CustomText(
          text: text,
          color: Colors.white,
          fontSize: 14,
        ));
  }
}
