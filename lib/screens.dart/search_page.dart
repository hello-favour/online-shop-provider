import 'package:flutter/material.dart';
import 'package:online_shop_app/components/app_text.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(
          text: "This is Search",
          color: Colors.black,
          size: 40,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
