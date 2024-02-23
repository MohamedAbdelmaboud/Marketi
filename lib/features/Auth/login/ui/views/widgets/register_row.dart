import 'package:flutter/material.dart';
import 'package:market/core/routes/routes.dart';
import 'package:market/core/themes/styles.dart';

class RegisterRow extends StatelessWidget {
  const RegisterRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: Styles.textStyle14,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.register);
          },
          child: Text(
            'sign up',
            style: Styles.textStyle14.copyWith(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
