import 'package:market/core/constants/assets.dart';

class ProductModel {
  String title;
  int price;
  double rating;
  String imagePath;
  bool hasDiscount;

  ProductModel({
    required this.title,
    required this.price,
    required this.rating,
    required this.imagePath,
    required this.hasDiscount,
  });
}

List<ProductModel> products = [
  ProductModel(
    title: 'Black JBL Airbods',
    price: 799,
    rating: 4.5,
    imagePath: Assets.assetsImagesAirBudsPic,
    hasDiscount: true,
  ),
  ProductModel(
    title: 'Sony Smart TV 55 inch',
    price: 13999,
    rating: 4.5,
    imagePath: Assets.assetsImagesSmartTv,
    hasDiscount: false,
  ),
  ProductModel(
    title: 'Seventh Generation',
    price: 599,
    rating: 4.5,
    imagePath: Assets.assetsImagesFutureSeventhGeneration,
    hasDiscount: false,
  ),
  ProductModel(
    title: 'Pampers Swaddlers',
    price: 345,
    rating: 4.5,
    imagePath: Assets.assetsImagesPampersSwaddlers,
    hasDiscount: true,
  ),
  ProductModel(
    title: 'Canon 5D Camera',
    price: 4999,
    rating: 4.5,
    imagePath: Assets.assetsImagesCamera,
    hasDiscount: true,
  ),
  ProductModel(
    title: 'iPhone 11 Pro',
    price: 19999,
    rating: 4.5,
    imagePath: Assets.assetsImagesIPhone11Pro,
    hasDiscount: false,
  ),
  ProductModel(
    title: 'HP Chromebook laptop',
    price: 14999,
    rating: 4.5,
    imagePath: Assets.assetsImagesLaptopHPChromebookLaptop,
    hasDiscount: false,
  ),
  ProductModel(
    title: 'Black Sony Headphone',
    price: 400,
    rating: 4.5,
    imagePath: Assets.assetsImagesHeadphones,
    hasDiscount: false,
  ),
  ProductModel(
    title: 'Women’s Ankle boots',
    price: 499,
    rating: 4.5,
    imagePath: Assets.assetsImagesAnkleBoots,
    hasDiscount: false,
  ),
  ProductModel(
    title: 'Smart Watch',
    price: 499,
    rating: 4.5,
    imagePath: Assets.assetsImagesSmartWatch,
    hasDiscount: false,
  ),
];
