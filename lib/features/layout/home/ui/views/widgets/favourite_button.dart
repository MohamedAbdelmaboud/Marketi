import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  final bool isFavourite;

  const FavouriteButton({
    super.key,
    this.isFavourite = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6), shape: BoxShape.circle),
          child: Icon(
            isFavourite
                ? Icons.favorite_outlined
                : Icons.favorite_outline_sharp,
            size: 20,
            color: isFavourite ? Colors.red : Colors.black,
          )),
    );
  }
}
