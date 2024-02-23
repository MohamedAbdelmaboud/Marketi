import 'package:flutter/material.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/widgets/svg_icon.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgIcon(
          path: Assets.assetsImagesIcons8Google,
        ),
        SvgIcon(
          path: Assets.assetsImagesIcons8Facebook,
        ),
        SvgIcon(path: Assets.assetsImagesIcons8Twitterx),
        SvgIcon(path: Assets.assetsImagesIcons8Github)
      ],
    );
  }
}
