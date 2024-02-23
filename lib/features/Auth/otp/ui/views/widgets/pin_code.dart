import 'package:flutter/material.dart';
import 'package:market/core/themes/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatelessWidget {
  const PinCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      textInputAction: TextInputAction.done,
      hintCharacter: '__',
      errorTextSpace: 30,
      mainAxisAlignment: MainAxisAlignment.center,
      errorTextMargin: const EdgeInsets.symmetric(horizontal: 48),
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter all the fields please";
        }
        if (value.length < 4) {
          return "Enter the remaining characters please";
        }
        return null; // Validation passed
      },
      pinTheme: PinTheme(
          inactiveColor: const Color(0xB2B2CCFF),
          activeColor: seconderyColor,
          shape: PinCodeFieldShape.box,
          fieldWidth: 64,
          fieldHeight: 64,
          fieldOuterPadding: const EdgeInsets.symmetric(horizontal: 8),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
