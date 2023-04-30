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
    final state = Provider.of<MainScreenNotifier>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            MainScreenNotifier();
          },
        ),
      ],
      child: MaterialApp(
        title: 'Online Shop',
        theme: ThemeData(
          fontFamily: "Inter",
        ),
        home: MainScreen(),
      ),
    );
  }
}
