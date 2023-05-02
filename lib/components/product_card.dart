import 'package:flutter/material.dart';
import 'package:online_shop_app/components/app_text.dart';
import 'package:online_shop_app/components/app_theme.dart';
import 'package:online_shop_app/screens.dart/constants/image_path.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.category,
    required this.price,
    required this.id,
    required this.name,
    required this.image,
  });
  final String category;
  final String price;
  final String id;
  final String name;
  final String image;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    bool selected = true;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 20, 0),
      child: ClipRRect(
        borderRadius: AppTheme.appRadius,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                spreadRadius: 0.1,
                blurRadius: 0.6,
                color: Colors.white,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.23,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImagePath.shoe2),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.favorite),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.8, right: 0.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                        text: widget.name,
                        color: Colors.black,
                        size: 30,
                        fontWeight: FontWeight.bold),
                    AppText(
                        text: widget.category,
                        color: Colors.black,
                        size: 18,
                        fontWeight: FontWeight.bold),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: widget.price,
                      color: Colors.black,
                      size: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    Row(
                      children: [
                        const AppText(
                          text: "Colors",
                          color: Colors.grey,
                          size: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        const SizedBox(width: 5),
                        ChoiceChip(
                          label: const Text(" "),
                          selected: selected,
                          visualDensity: VisualDensity.compact,
                          selectedColor: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
