import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  
  const ColorDot({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: 10,
        width: 10,
        child: ColoredBox(color: color)
      )
    );
  }
}
