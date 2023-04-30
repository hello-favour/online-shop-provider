import 'package:flutter/material.dart';
import 'package:online_shop_app/components/app_theme.dart';
import 'package:online_shop_app/components/bottom_nav.dart';
import 'package:online_shop_app/components/bottom_nav_bar.dart';
import 'package:online_shop_app/controllers/mainscreen_provider.dart';
import 'package:online_shop_app/screens.dart/cart_page.dart';
import 'package:online_shop_app/screens.dart/home_page.dart';
import 'package:online_shop_app/screens.dart/profile_page.dart';
import 'package:online_shop_app/screens.dart/search_page.dart';
import 'package:provider/provider.dart';

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
    final state = Provider.of<MainScreenNotifier>(context);
    return Scaffold(
      backgroundColor: AppTheme.bgrdColor,
      body: pageList[state.pageIndex],
      bottomNavigationBar: BottomNavBar(state: state),
    );
  }
}
