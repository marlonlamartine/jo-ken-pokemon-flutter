// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/colors_app.dart';

class TileResult extends StatelessWidget {
  final String imagePath;

  const TileResult({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        border: Border.all(color: context.colorsApp.lightYellow),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
