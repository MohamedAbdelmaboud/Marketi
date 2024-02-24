import 'package:flutter/material.dart';
import 'package:market/features/Auth/login/ui/views/login_view.dart';
import 'package:market/features/Auth/otp/ui/views/forget_with_email_view.dart';
import 'package:market/features/Auth/otp/ui/views/forget_with_phone_view.dart';
import 'package:market/features/Auth/otp/ui/views/varification_with_email_view.dart';
import 'package:market/features/Auth/otp/ui/views/varification_with_phone_view.dart';
import 'package:market/features/Auth/register/ui/views/register_view.dart';
import 'package:market/features/lay/home/ui/views/home_view.dart';
import 'package:market/features/intro/ui/views/introduction_view.dart';
import 'package:market/features/splash/ui/views/splash_view.dart';

class Routes {
  static const String splash = '/';
  static const String introduction = '/IntroductionView';
  static const String home = '/HomeView';
  static const String login = '/LoginView';
  static const String register = '/RegisterView';
  static const String verificationEmail = '/VarificationEmailView';
  static const String verificationPhone = '/VarificationPhoneView';
  static const String forgetPasswordWithEmail = '/ForgetPasswordWithEmailView';
  static const String forgetPasswordWithPhone = '/ForgetPasswordWithPhoneView';
}

// ...

Map<String, Widget Function(BuildContext)> routes = {
  Routes.splash: (context) => const SplashView(),
  Routes.introduction: (context) => const IntroductionView(),
  Routes.home: (context) => const HomeView(),
  Routes.login: (context) => const LoginView(),
  Routes.register: (context) => const RegisterView(),
  Routes.verificationEmail: (context) => const VarificationEmailView(),
  Routes.verificationPhone: (context) => const VerificationPhoneView(),
  Routes.forgetPasswordWithEmail: (context) =>
      const ForgetPasswordWithEmailView(),
  Routes.forgetPasswordWithPhone: (context) =>
      const ForgetPasswordWithPhoneView(),
};
