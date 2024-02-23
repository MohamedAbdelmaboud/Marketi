import 'package:flutter/material.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/widgets/svg_picture.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgIcon(path: Assets.assetsImagesGoogleIcon),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: SvgIcon(path: Assets.assetsImagesAppleIcon)),
        SvgIcon(path: Assets.assetsImagesFacebokIcon),
      ],
    );
  }
}
