// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final bool isSelected;
  final VoidCallback? onTap;
  final String imagePath;

  const Tile({
    super.key,
    required this.isSelected,
    this.onTap,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 110,
        height: 110,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
