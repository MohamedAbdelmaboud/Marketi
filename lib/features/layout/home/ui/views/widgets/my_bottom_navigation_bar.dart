import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:market/core/themes/colors.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    Key? key,
    required this.bottomNavIndex,
    required this.onTap,
  }) : super(key: key);

  final int bottomNavIndex;
  final dynamic Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: bottomNavIndex,
      height: 55,
      items: const <Widget>[
        Icon(Icons.home_rounded, color: Colors.white, size: 25),
        Icon(Icons.favorite_sharp, color: Colors.white, size: 25),
        Icon(Icons.shopping_cart_rounded, color: Colors.white, size: 25),
        Icon(Icons.person_2_sharp, color: Colors.white, size: 25),
      ],
      color: myBlue,
      buttonBackgroundColor: myBlue,
      backgroundColor: Colors.white,
      animationCurve: Curves.decelerate,
      animationDuration: const Duration(milliseconds: 300),
      onTap: onTap,
    );
  }
}
