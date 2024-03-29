import 'package:flutter/material.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/routes/routes.dart';
import 'package:market/core/widgets/custom_button.dart';

import 'custom_column_list.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({
    super.key,
  });

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        autovalidateMode: autovalidateMode,
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                Assets.assetsImagesLogoSplashScreen,
                width: 187.59,
                height: 160,
              ),
              CustomColumnList(
                  passwordController: passwordController,
                  confirmController: confirmController),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                    text: 'Sign up',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(context, Routes.home);
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
