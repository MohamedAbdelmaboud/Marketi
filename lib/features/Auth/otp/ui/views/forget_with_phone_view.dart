import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market/features/Auth/otp/ui/views/widgets/custom_forget_password.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/routes/routes.dart';

class ForgetPasswordWithPhoneView extends StatelessWidget {
  const ForgetPasswordWithPhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomForgetPassword(
      routeName: Routes.verificationPhone,
      description:
          'Please enter your phone number to receive a verification code',
      hiddenText: 'Try Another Way',
      upperText: 'Phone Number',
      imageAsset: Assets.assetsImagesIllustrationForgotPasswordWithPhone,
      prefixIcon: FontAwesomeIcons.mobileScreen,
      hintText: 'Enter your number',
    );
  }
}
