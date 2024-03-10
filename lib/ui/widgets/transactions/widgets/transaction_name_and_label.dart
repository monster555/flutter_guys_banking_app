import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/core/extensions.dart';
import 'package:flutter_guys_banking_app/models/transaction_model.dart';

class TransactionNameAndLabel extends StatelessWidget {
  const TransactionNameAndLabel(this.transaction, {super.key});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          transaction.name,
          style: context.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          transaction.label,
          style: context.textTheme.bodySmall!.copyWith(
            color: context.textTheme.bodySmall!.color!.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
