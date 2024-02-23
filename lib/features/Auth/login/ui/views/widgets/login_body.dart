import 'package:flutter/material.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/constants/colors.dart';
import 'package:market/core/routes/routes.dart';
import 'package:market/core/utils/extensions.dart';
import 'package:market/core/widgets/componants/custom_text.dart';
import 'package:market/core/widgets/custom_button.dart';
import 'package:market/core/widgets/custom_text_form_field.dart';
import 'package:market/core/widgets/icons_row.dart';

import 'register_row.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final formKey = GlobalKey<FormState>();

  bool? checkBoxVAlue = false;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.assetsImagesLogoSplashScreen,
              width: 272,
              height: 232,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: CustomTextFromField(
                validator: (value) {
                  if (value!.isEmpty || value.isValidEmail) {
                    return "Enter a valid email";
                  }
                  return null;
                },
                hintText: 'Username or Email',
                controller: emailController,
                prefixIcon: Icons.email_outlined,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            CustomTextFromField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter a valid Password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 charcter';
                }
                return null;
              },
              obscureText: true,
              hintText: 'Password',
              controller: passwordController,
              prefixIcon: Icons.lock_outline_rounded,
              suffixIcon: Icons.visibility,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Checkbox(
                        activeColor: buttonColor,
                        value: checkBoxVAlue,
                        onChanged: (newValue) {
                          setState(() {
                            checkBoxVAlue = newValue;
                          });
                        },
                      ),
                      const CustomText(
                        text: 'Remember Me',
                        fontSize: 12,
                        color: navyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, Routes.forgetPasswordWithPhone);
                      },
                      child: const CustomText(
                        text: 'Forgot Password?',
                        fontSize: 12,
                        color: buttonColor,
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
            ),
            CustomButton(
                text: 'Log In',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, Routes.home);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                }),
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: CustomText(
                text: 'Or Continue With',
                fontSize: 12,
                color: navyColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const IconsRow(),
            const RegisterRow()
          ],
        ),
      ),
    );
  }
}
