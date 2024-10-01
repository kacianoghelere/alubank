import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return BoxCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _ActivityValue(
                  dotColor: ThemeColors.recentActivity['spent']!,
                  label: 'Saída',
                  value: 9900.97
                ),
                _ActivityValue(
                  dotColor: ThemeColors.recentActivity['income']!,
                  label: 'Entrada',
                  value: 9332.35
                )
              ]
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text('Limite de gastos: \$432.93'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5)
              ),
              child: LinearProgressIndicator(
                value: 0.5,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: ContentDivision(),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text('Esse mês você gastou \$1500.00 com jogos. Tente reduzir este custo!'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Diga-me como', style: TextStyle(fontSize: 16))
          ),
        ],
      ),
    );
  }
}

class _ActivityValue extends StatelessWidget {
  final Color dotColor;
  final double value;
  final String label;

  const _ActivityValue({
    super.key,
    required this.dotColor,
    required this.value,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: ColorDot(color: dotColor),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label),
            Text('\$$value', style: Theme.of(context).textTheme.bodyLarge!)
          ]
        )
      ]
    );
  }
}
