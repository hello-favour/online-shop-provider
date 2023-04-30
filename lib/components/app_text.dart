import 'package:flutter/cupertino.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  const AppText({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Inter",
        fontWeight: fontWeight,
        color: color,
        fontSize: size,
      ),
    );
  }
}
