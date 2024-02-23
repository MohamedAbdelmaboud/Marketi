import 'package:flutter/material.dart';
import 'package:market/core/constants/colors.dart';
import 'package:market/core/routes/routes.dart';
import 'package:market/core/widgets/componants/custom_text.dart';

class RegisterRow extends StatelessWidget {
  const RegisterRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(
          text: 'Are you new in Marketi ',
          fontSize: 12,
          color: navyColor,
          fontWeight: FontWeight.w500,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.register);
            },
            child: const CustomText(
              text: 'Register?',
              fontSize: 12,
              color: buttonColor,
              fontWeight: FontWeight.w500,
            ))
      ],
    );
  }
}
