import 'package:flutter/material.dart';
import 'package:online_shop_app/components/app_theme.dart';

class NewShoe extends StatelessWidget {
  final String imageUrl;
  const NewShoe({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppTheme.appRadius,
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 0.8,
              offset: Offset(0, 1),
            ),
          ]),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.6,
    );
  }
}
