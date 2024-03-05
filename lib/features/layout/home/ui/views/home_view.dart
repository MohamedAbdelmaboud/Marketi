import 'package:flutter/material.dart';
import 'package:market/features/layout//home/ui/views/widgets/home_body.dart';
import 'package:market/features/layout//home/ui/views/widgets/my_bottom_navigation_bar.dart';
import 'package:market/features/layout/Favorite/ui/views/favorite_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int bottomNavIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
          bottomNavIndex: bottomNavIndex,
          onTap: (index) {
            bottomNavIndex = index;
            pageController.animateToPage(bottomNavIndex,
                duration: Durations.short4, curve: Curves.ease);
            setState(() {});
          }),
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          bottomNavIndex = index;
          setState(() {
            
          });
        },
        children: pages,
      ),
    );
  }
}

List<Widget> pages = <Widget>[
  const HomeBody(),
  const FavoriteView(),
];
