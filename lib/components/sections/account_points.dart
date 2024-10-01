import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text('Pontos da conta', style: Theme.of(context).textTheme.titleLarge),
          ),
          BoxCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Pontos totais:'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    '3000',
                    style: Theme.of(context).textTheme.bodyLarge!
                  )
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ContentDivision()
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Objetivos',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal
                    )
                  )
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4),
                        child: ColorDot(color: Colors.red),
                      ),
                      Text('Entrega Grátis: 15000pts')
                    ],
                  )
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4),
                        child: ColorDot(color: Colors.blue),
                      ),
                      Text('1 mês de streaming: 30000pts')
                    ],
                  )
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
