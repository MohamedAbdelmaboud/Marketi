import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/routes/routes.dart';
import 'package:market/features/Auth/otp/ui/views/widgets/custom_forget_password.dart';

class ForgetPasswordWithEmailView extends StatelessWidget {
  const ForgetPasswordWithEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomForgetPassword(
      routeName: Routes.verificationEmail,
      description:
          'Please enter your your email address to receive a verification code',
      upperText: 'Email',
      imageAsset: Assets.assetsImagesIllustrationForgotPasswordWithPhone,
      prefixIcon: FontAwesomeIcons.mobileScreen,
      hintText: 'You@gmail.com',
    );
  }
}
