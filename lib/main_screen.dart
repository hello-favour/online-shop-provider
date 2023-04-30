import 'package:flutter/material.dart';
import 'package:online_shop_app/components/app_theme.dart';
import 'package:online_shop_app/components/bottom_nav.dart';
import 'package:online_shop_app/screens.dart/cart_page.dart';
import 'package:online_shop_app/screens.dart/home_page.dart';
import 'package:online_shop_app/screens.dart/profile_page.dart';
import 'package:online_shop_app/screens.dart/search_page.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    int pageIndex = 1;
    return Scaffold(
      backgroundColor: AppTheme.bgrdColor,
      body: pageList[pageIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.bottomNavPadding),
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: AppTheme.appRadius,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavWidget(
                  icon: Icons.home,
                  onTap: () {},
                ),
                BottomNavWidget(
                  icon: Icons.search,
                  onTap: () {},
                ),
                BottomNavWidget(
                  icon: Icons.add,
                  onTap: () {},
                ),
                BottomNavWidget(
                  icon: Icons.shopping_cart,
                  onTap: () {},
                ),
                BottomNavWidget(
                  icon: Icons.person,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
