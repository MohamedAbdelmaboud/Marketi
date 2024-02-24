import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market/core/constants/assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, top: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              Assets.assetsImagesMe,
              width: 40,
              height: 40,
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            'Hi Abooud!',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          SvgPicture.asset(Assets.assetsImagesBell),
        ],
      ),
    );
  }
}
