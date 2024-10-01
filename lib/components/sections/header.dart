import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0)
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.headerGradient
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text.rich(
                  TextSpan(
                    text: '\$',
                    children: <TextSpan>[
                      TextSpan(
                        text: '1000,00',
                        style: Theme.of(context).textTheme.bodyLarge!
                      )
                    ]
                  ),
                ),
                const Text('Balanço disponível'),
              ]
            ),
            const Icon(Icons.account_circle, size: 42, color: Colors.white)
          ],
        ),
      ),
    );
  }
}
