import 'package:flutter/material.dart';
import 'package:online_shop_app/components/app_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(
          text: "This is Profile",
          color: Colors.black,
          size: 40,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
