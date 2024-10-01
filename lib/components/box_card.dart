import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget child;

  const BoxCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: kElevationToShadow[3],
        color: ThemeColors.cardBackground
      ),
      padding: const EdgeInsets.all(16.0),
      child: child
    );
  }
}
