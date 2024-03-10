import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/models/transaction_model.dart';
import 'package:flutter_guys_banking_app/ui/widgets/transactions/widgets/transaction_icon.dart';
import 'package:flutter_guys_banking_app/ui/widgets/transactions/widgets/transaction_name_and_label.dart';
import 'package:flutter_guys_banking_app/ui/widgets/transactions/widgets/transaction_price_and_date.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem(this.transaction, {super.key});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Row(
        children: [
          TransactionIcon(transaction.icon),
          const SizedBox(width: 12),
          TransactionNameAndLabel(transaction),
          const Spacer(),
          TransactionPriceAndDate(transaction),
        ],
      ),
    );
  }
}
