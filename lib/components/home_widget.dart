import 'package:flutter/material.dart';
import 'package:online_shop_app/components/new_shoe.dart';
import 'package:online_shop_app/components/product_card.dart';
import 'package:online_shop_app/screens.dart/constants/image_path.dart';

class HomeWidget extends StatelessWidget {
  final String category;
  final String price;
  final String name;
  final String id;
  final String image;
  const HomeWidget({
    Key? key,
    required this.category,
    required this.price,
    required this.name,
    required this.id,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.405,
          child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProductCard(
                category: category,
                price: price,
                id: id,
                name: name,
                image: image,
              );
            },
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Latest Shoes",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "Show All",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.13,
          child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: NewShoe(imageUrl: ImagePath.shoe4),
              );
            },
          ),
        ),
      ],
    );
  }
}
