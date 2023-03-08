// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final ButtonStyle style;
  final TextStyle labelStyle;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final bool outline;

  const Button({
    super.key,
    required this.label,
    required this.style,
    required this.labelStyle,
    this.onPressed,
    this.width,
    this.height,
    required this.outline,
  });

  @override
  Widget build(BuildContext context) {
    final labelText = Text(
      label,
      style: labelStyle,
      overflow: TextOverflow.ellipsis,
    );
    return SizedBox(
      width: width,
      height: height,
      child: outline
          ? OutlinedButton(
              onPressed: onPressed,
              style: style,
              child: labelText,
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: style,
              child: labelText,
            ),
    );
  }
}
