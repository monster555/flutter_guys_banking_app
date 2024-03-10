import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/core/extensions.dart';

/// Enum for transaction types.
///
/// Each transaction type has a color and a symbol associated with it.
enum TransactionType {
  /// Represents an income transaction.
  ///
  /// The color for income transactions is green and the symbol is '+'.
  income(Colors.green, '+'),

  /// Represents an expense transaction.
  ///
  /// The color for expense transactions is red and the symbol is '-'.
  expense(Colors.red, '-');

  /// Creates a new instance of [TransactionType].
  ///
  /// Takes a [Color] and a [String] symbol as parameters.
  const TransactionType(this.color, this.symbol);

  /// The color associated with the transaction type.
  final Color color;

  /// The symbol associated with the transaction type.
  final String symbol;
}

/// Class for a financial transaction.
///
/// A transaction has a type, name, label, icon, amount, and date.
class Transaction {
  /// Creates a new instance of [Transaction].
  ///
  /// All parameters are required except for date, which defaults to the current date and time if not provided.
  Transaction({
    required this.transactionType,
    required this.name,
    required this.label,
    required this.icon,
    required this.amount,
    DateTime? date,
  }) : _date = date ?? DateTime.now();

  /// The type of the transaction (income or expense).
  final TransactionType transactionType;

  /// The name of the transaction.
  final String name;

  /// The label of the transaction.
  final String label;

  /// The icon for the transaction.
  final String icon;

  /// The amount of the transaction.
  final double amount;

  /// The date of the transaction.
  ///
  /// If not provided, defaults to the current date and time.
  final DateTime? _date;

  /// Returns the date of the transaction formatted as a string.
  String get formattedDate => _date!.formattedDate;

  /// Returns the price of the transaction formatted as a string.
  ///
  /// The string includes the symbol for the transaction type and the amount to two decimal places.
  String get formattedPrice =>
      '${transactionType.symbol} \$${amount.toStringAsFixed(2)}';
}
