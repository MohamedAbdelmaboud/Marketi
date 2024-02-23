import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:market/core/routes/routes.dart';
import 'package:market/features/intro/ui/views/widgets/page_view_models.dart';

import 'widgets/onboarding_button.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});
  static const String id = '/IntroductionView';

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      showDoneButton: true,
      showSkipButton: false,
      showNextButton: true,
      animationDuration: 200,
      dotsDecorator: const DotsDecorator(
          spacing: EdgeInsets.all(8),
          activeSize: Size.square(15.0),
          activeColor: Color(0xff001640),
          size: Size.square(12),
          color: Color(0xffB2CCFF)),
      next: const OnboardingButton(text: "Next"),
      done: const OnboardingButton(text: "Done"),
      onDone: () => Navigator.pushReplacementNamed(context, Routes.login),
    );
  }
}
