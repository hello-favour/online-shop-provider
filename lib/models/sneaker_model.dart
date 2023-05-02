import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Sneakers {
  final String id;
  final String name;
  final String category;
  final String imageUrl;
  final String oldPrice;
  final List<dynamic> size;
  final String price;
  final String title;
  final String description;
  Sneakers({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.oldPrice,
    required this.size,
    required this.price,
    required this.title,
    required this.description,
  });

  factory Sneakers.fromMap(Map<String, dynamic> map) {
    return Sneakers(
      id: map["id"] ?? "",
      name: map["name"] ?? "",
      category: map["category"] ?? "",
      imageUrl: map["imageUrl"],
      oldPrice: map["oldPrice"] ?? 0,
      size: List<dynamic>.from(map["size"] ?? 0),
      price: map["price"] ?? "",
      title: map["title"] ?? "",
      description: map["description"] ?? "",
    );
  }

  Sneakers copyWith({
    String? id,
    String? name,
    String? category,
    String? imageUrl,
    String? oldPrice,
    List<dynamic>? size,
    String? price,
    String? title,
    String? description,
  }) {
    return Sneakers(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      imageUrl: imageUrl ?? this.imageUrl,
      oldPrice: oldPrice ?? this.oldPrice,
      size: size ?? this.size,
      price: price ?? this.price,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  @override
  String toString() {
    return 'Sneakers(id: $id, name: $name, category: $category, imageUrl: $imageUrl, oldPrice: $oldPrice, size: $size, price: $price, title: $title, description: $description)';
  }
}
