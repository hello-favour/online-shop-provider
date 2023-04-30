import 'package:flutter/material.dart';
import 'package:online_shop_app/components/app_theme.dart';
import 'package:online_shop_app/components/app_font.dart';
import 'package:online_shop_app/components/bottom_nav.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgrdColor,
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
      body: const Center(
        child: AppFont(
          text: "MainScreen",
          color: Colors.black,
          size: AppTheme.fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
