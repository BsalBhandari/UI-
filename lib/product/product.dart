import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String iconPath;

  const Products({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(13)),
          child: Image.asset(
            iconPath,
            color: Colors.grey,
          )),
    );
  }
}
