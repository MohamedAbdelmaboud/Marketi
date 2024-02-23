import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: 40,
      height: 40,
    );
  }
}
