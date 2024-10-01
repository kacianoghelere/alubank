import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text('Ações da conta', style: Theme.of(context).textTheme.titleLarge),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 10,
                child: _AccountAction(
                  icon: Icons.account_balance_wallet,
                  label: 'Depositar',
                  onTap: () {},
                ),
              ),
              const Spacer(flex: 1),
              Expanded(
                flex: 10,
                child: _AccountAction(
                  icon: Icons.cached,
                  label: 'Transferir',
                  onTap: () {},
                ),
              ),
              const Spacer(flex: 1),
              Expanded(
                flex: 10,
                child: _AccountAction(
                  icon: Icons.center_focus_strong,
                  label: 'Ler',
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AccountAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function() onTap;

  const _AccountAction({
    required this.icon,
    required this.label,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: BoxCard(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Icon(icon)
            ),
            Text(label)
          ]
        )
      ),
    );
  }
}
