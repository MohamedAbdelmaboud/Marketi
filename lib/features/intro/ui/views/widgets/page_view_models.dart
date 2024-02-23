import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:market/core/constants/assets.dart';

PageDecoration buildPageDecoration() {
  return PageDecoration(
    bodyAlignment: Alignment.center,
    bodyTextStyle: GoogleFonts.montserrat(
      color: const Color(0xff001640),
      fontSize: 18,
    ),
  );
}

List<PageViewModel> pages = [
  PageViewModel(
    decoration: buildPageDecoration(),
    titleWidget: SvgPicture.asset(Assets.assetsImagesOnboarding1),
    body:
        "Discover a world of endless possibilities and shop from the comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.",
  ),
  PageViewModel(
    decoration: buildPageDecoration(),
    titleWidget: SvgPicture.asset(Assets.assetsImagesOnboarding2),
    body:
        "Find the perfect item that suits your style and needs With secure payment options and fast delivery, shopping has never been easier.",
  ),
  PageViewModel(
    decoration: buildPageDecoration(),
    titleWidget: SvgPicture.asset(Assets.assetsImagesOnboarding3),
    body:
        "Start exploring now and experience the convenience of online shopping at its best.",
  ),
];
