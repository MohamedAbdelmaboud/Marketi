import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/constants/colors.dart';
import 'package:market/core/widgets/componants/custom_text.dart';
import 'package:market/core/widgets/custom_button.dart';

import 'widgets/app_bar.dart';
import 'widgets/pin_code.dart';

class VerificationPhoneView extends StatefulWidget {
  const VerificationPhoneView({super.key});

  @override
  State<VerificationPhoneView> createState() => _VerificationPhoneViewState();
}

class _VerificationPhoneViewState extends State<VerificationPhoneView> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context, 'Verification code'),
      body: Form(
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
                      'Please enter the 4 digit code \n     sent to: +20 1501142409',
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
    );
  }
}
