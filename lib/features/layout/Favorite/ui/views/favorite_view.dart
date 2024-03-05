import 'package:flutter/material.dart';
import 'package:market/features/Auth/otp/ui/views/widgets/app_bar.dart';
import 'package:market/features/layout/home/ui/views/widgets/products_grid_view.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context, 'My Favorites 💙', visible: false),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: ProductsGridView(
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
