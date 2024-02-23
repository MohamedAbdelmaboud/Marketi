// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/constants/colors.dart';
import 'package:market/core/widgets/componants/custom_text.dart';
import 'package:market/core/widgets/custom_button.dart';
import 'package:market/features/Auth/otp/ui/views/widgets/pin_code.dart';
import 'package:market/features/Auth/otp/ui/views/widgets/app_bar.dart';

class VarificationEmailView extends StatelessWidget {
  VarificationEmailView({super.key});
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context,'Verification code'),
      body: SizedBox(
        width: double.infinity,
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset(
                    Assets.assetsImagesIllustrationVerificationCodeWithPhone),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 47, vertical: 22),
                  child: CustomText(
                    color: navyColor,
                    fontSize: 14,
                    text:
                        'Please enter the 4 digit code \n     sent to:  You@gmail.com',
                  ),
                ),
                const PinCode(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: CustomButton(
                    text: 'Verify Code',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, 'home');
                      }
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 22.0),
                  child: CustomText(
                    text: "00.40",
                    fontSize: 16,
                    color: navyColor,
                  ),
                ),
                TextButton(
                    child: const CustomText(
                      text: 'Resend Code',
                      color: buttonColor,
                      fontSize: 16,
                    ),
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
