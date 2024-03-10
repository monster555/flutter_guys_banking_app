import 'package:flutter/material.dart';

class TransactionIcon extends StatelessWidget {
  const TransactionIcon(this.icon, {super.key});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(icon),
    );
  }
}
