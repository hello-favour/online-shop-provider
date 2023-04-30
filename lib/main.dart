import 'package:flutter/material.dart';
import 'package:online_shop_app/controllers/mainscreen_provider.dart';
import 'package:online_shop_app/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return MainScreenNotifier();
          },
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          title: 'Online Shop',
          theme: ThemeData(
            fontFamily: "Inter",
          ),
          home: MainScreen(),
        );
      },
    );
  }
}
