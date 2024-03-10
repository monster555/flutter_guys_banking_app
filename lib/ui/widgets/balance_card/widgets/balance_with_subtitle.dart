import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/core/extensions.dart';

class BalanceWithSubtitle extends StatelessWidget {
  const BalanceWithSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\$6,420.00',
          style: context.textTheme.headlineMedium!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'up by 2% from last month',
          style: context.textTheme.bodyMedium!.copyWith(
            color: Colors.white60,
          ),
        )
      ],
    );
  }
}
