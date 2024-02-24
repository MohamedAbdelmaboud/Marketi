import 'package:flutter/material.dart';
import 'package:market/features/home/ui/views/widgets/home_body.dart';
import 'package:market/features/home/ui/views/widgets/my_bottom_navigation_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
          bottomNavIndex: bottomNavIndex,
          onTap: (index) {
            bottomNavIndex = index;
          }),
      backgroundColor: Colors.white,
      body: const HomeBody(),
    );
  }
}
