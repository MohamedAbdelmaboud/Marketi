import 'package:market/core/constants/assets.dart';

class BrandModel {
  final String imagePath;

  BrandModel({
    required this.imagePath,
  });
}

List<BrandModel> brands = [
  BrandModel(imagePath: Assets.assetsImagesCanon),
  BrandModel(imagePath: Assets.assetsImagesJBLLogo2),
  BrandModel(imagePath: Assets.assetsImagesSONYLogo2),
  BrandModel(imagePath: Assets.assetsImagesTownTeamLogo2),
  BrandModel(imagePath: Assets.assetsImagesCk),
  BrandModel(imagePath: Assets.assetsImagesDell),
  BrandModel(imagePath: Assets.assetsImagesAdidas),
  BrandModel(imagePath: Assets.assetsImagesPuma),
  BrandModel(imagePath: Assets.assetsImagesHp),
  BrandModel(imagePath: Assets.assetsImagesApple),
];
