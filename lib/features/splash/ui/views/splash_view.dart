import 'dart:async';

import 'package:flutter/material.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/routes/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Routes.introduction);
    });
    /* 
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'introduction');
    });
    */
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.assetsImagesLogoSplashScreen,
        ),
      ),
    );
  }
}
