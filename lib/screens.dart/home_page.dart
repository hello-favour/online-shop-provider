import 'package:flutter/material.dart';
import 'package:online_shop_app/components/app_text.dart';
import 'package:online_shop_app/components/app_theme.dart';
import 'package:online_shop_app/components/home_widget.dart';
import 'package:online_shop_app/screens.dart/constants/image_path.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgrdColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Athletics Shoes",
                    color: Colors.black,
                    size: 42,
                    fontWeight: FontWeight.bold,
                  ),
                  const AppText(
                    text: "Collections",
                    color: Colors.black,
                    size: 42,
                    fontWeight: FontWeight.bold,
                  ),
                  TabBar(
                    padding: EdgeInsets.zero,
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.transparent,
                    isScrollable: true,
                    controller: _tabController,
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    unselectedLabelColor: Colors.grey.withOpacity(0.3),
                    tabs: const [
                      Tab(
                        text: "Men Shoes",
                      ),
                      Tab(
                        text: "Women Shoes",
                      ),
                      Tab(
                        text: "Kids Shoes",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.265),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    HomeWidget(
                      category: 'Men Shoes',
                      name: "UltraBoost Shoe",
                      image: "assets/images/shoe 4.png",
                      id: "1",
                      price: "\$2000",
                    ),
                    HomeWidget(
                      category: 'Women Shoes',
                      name: "Originals NMD R1",
                      image: ImagePath.shoe2,
                      id: "2",
                      price: "\$5000",
                    ),
                    HomeWidget(
                      category: 'kids Shoes',
                      name: "Original Adidas Shoe",
                      image: ImagePath.shoe1,
                      id: "3",
                      price: "\$4000",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
