import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/screens/cart/cart_screen.dart';
import 'package:grocery_app/screens/explore/explore_screen.dart';
import 'package:grocery_app/screens/favorite/favorite_screen.dart';
import 'package:grocery_app/screens/home/home_page.dart';
import 'package:grocery_app/screens/profile/profile_screen.dart';

class ButtomNavBarScreen extends StatefulWidget {
  const ButtomNavBarScreen({super.key});

  @override
  State<ButtomNavBarScreen> createState() => _ButtomNavBarScreenState();
}

class _ButtomNavBarScreenState extends State<ButtomNavBarScreen> {
  int activeIndex = 0;
  List<Widget> screens = [
    HomePage(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff53B175),
        currentIndex: activeIndex,
        onTap: (V) => {
          setState(() {
            activeIndex = V;
          }),
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/shop.svg',
              colorFilter: activeIndex == 0
                  ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn)
                  : null,
            ),

            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/explore.svg',
              colorFilter: activeIndex == 1
                  ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn)
                  : null,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              colorFilter: activeIndex == 2
                  ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn)
                  : null,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/favorite.svg',
              colorFilter: activeIndex == 3
                  ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn)
                  : null,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
              colorFilter: activeIndex == 4
                  ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn)
                  : null,
            ),

            label: 'Profile',
          ),
        ],
      ),
      body: screens[activeIndex],
    );
  }
}
