import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/core/extensions.dart';
import 'package:flutter_guys_banking_app/models/transaction_model.dart';

class TransactionPriceAndDate extends StatelessWidget {
  const TransactionPriceAndDate(this.transaction, {super.key});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          transaction.formattedPrice,
          style: context.textTheme.bodyMedium!.copyWith(
            color: transaction.transactionType.color,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          transaction.formattedDate,
          style: context.textTheme.bodySmall!.copyWith(
            color: context.textTheme.bodySmall!.color!.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
