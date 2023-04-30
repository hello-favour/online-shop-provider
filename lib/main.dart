import 'package:flutter/material.dart';
import 'package:online_shop_app/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shop',
      theme: ThemeData(
        fontFamily: "Inter",
      ),
      home: MainScreen(),
    );
  }
}
