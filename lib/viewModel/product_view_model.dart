import 'package:flutter/material.dart';

class Product {
  final bool isFavourite;
  final String title, image, subTitle, description;
  final int id, price, count;
  final List<Color> color;

  Product(
      {required this.color,
      this.isFavourite = false,
      required this.title,
      required this.image,
      required this.subTitle,
      required this.id,
      required this.count,
      required this.price,
      required this.description});
}
