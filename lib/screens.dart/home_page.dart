import 'package:flutter/material.dart';
import 'package:online_shop_app/components/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(
          text: "This is Home",
          color: Colors.black,
          size: 40,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
