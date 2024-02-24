import 'package:market/core/constants/assets.dart';

class CategoryModel {
  String title;
  String imagePath;

  CategoryModel({
    required this.title,
    required this.imagePath,
  });
}

List<CategoryModel> categories = [
  CategoryModel(
    title: 'Fashion',
    imagePath: Assets.assetsImagesFashion,
  ),
  CategoryModel(
    title: 'Phones',
    imagePath: Assets.assetsImagesIPhone11Pro,
  ),
  CategoryModel(
    title: 'Food',
    imagePath: Assets.assetsImagesFood,
  ),
  CategoryModel(
    title: 'Plants',
    imagePath: Assets.assetsImagesPlant,
  ),
  CategoryModel(
    title: 'Electronics',
    imagePath: Assets.assetsImagesHeadphones,
  ),
  CategoryModel(
    title: 'Pampers',
    imagePath: Assets.assetsImagesFutureSeventhGeneration,
  ),
];
