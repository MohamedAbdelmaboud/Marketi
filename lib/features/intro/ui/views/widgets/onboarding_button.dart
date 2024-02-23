import 'package:flutter/material.dart';

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
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ));
  }
}
