import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/core/extensions.dart';
import 'package:flutter_guys_banking_app/data/dummy_data.dart';
import 'package:flutter_guys_banking_app/ui/widgets/transactions/widgets/transaction_item.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent transactions',
              style: context.textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ...transactionsList
                .map((transaction) => TransactionItem(transaction))
                .toList(),
          ],
        ),
      ),
    );
  }
}
