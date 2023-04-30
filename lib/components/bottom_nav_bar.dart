import 'package:flutter/material.dart';
import 'package:online_shop_app/components/app_theme.dart';
import 'package:online_shop_app/components/bottom_nav.dart';
import 'package:online_shop_app/controllers/mainscreen_provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.state,
  }) : super(key: key);

  final MainScreenNotifier state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                icon: state.pageIndex == 0 ? Icons.home : Icons.home_outlined,
                onTap: () {
                  state.pageIndex = 0;
                },
              ),
              BottomNavWidget(
                icon: state.pageIndex == 1 ? Icons.search : Icons.search,
                onTap: () {
                  state.pageIndex = 1;
                },
              ),
              BottomNavWidget(
                icon: state.pageIndex == 2
                    ? Icons.add
                    : Icons.add_circle_outlined,
                onTap: () {
                  state.pageIndex = 2;
                },
              ),
              BottomNavWidget(
                icon: state.pageIndex == 3
                    ? Icons.shopping_cart
                    : Icons.shop_outlined,
                onTap: () {
                  state.pageIndex = 3;
                },
              ),
              BottomNavWidget(
                icon:
                    state.pageIndex == 4 ? Icons.person : Icons.person_outline,
                onTap: () {
                  state.pageIndex = 4;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
