import 'package:flutter/material.dart';

class CircleColor extends StatelessWidget {
  double radius;
  Color color;
  CircleColor({
    required this.color,
    this.radius = 15,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: color,
      ),
    );
  }
}
