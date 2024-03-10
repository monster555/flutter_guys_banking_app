import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/core/extensions.dart';
import 'package:flutter_guys_banking_app/models/transaction_model.dart';
import 'package:flutter_test/flutter_test.dart';

/// Main function for running tests related to transactions and extensions.
main() {
  late Transaction income, expense;

  /// Set up transactions before running tests.
  setUp(() {
    income = Transaction(
      transactionType: TransactionType.income,
      name: 'Salary',
      label: 'Monthly Salary',
      icon: 'assets/icons/salary.png',
      amount: 5000.00,
    );

    expense = Transaction(
      transactionType: TransactionType.expense,
      name: 'Rent',
      label: 'Monthly Rent',
      icon: 'assets/icons/rent.png',
      amount: 1000.00,
    );
  });

  group('Extensions', () {
    test('should correctly format date', () {
      final date = DateTime(2024, 3, 9);
      expect(date.formattedDate, '9/3/2024');
    });
  });

  group('Transaction', () {
    test('should correctly format price for income transaction', () {
      expect(income.formattedPrice, equals('+ \$5000.00'));
    });

    test('should correctly format price for expense transaction', () {
      expect(expense.formattedPrice, equals('- \$1000.00'));
    });
  });

  group('TransactionType', () {
    test('income type should have correct color and symbol', () {
      expect(TransactionType.income.color, equals(Colors.green));
      expect(TransactionType.income.symbol, equals('+'));
    });

    test('expense type should have correct color and symbol', () {
      expect(TransactionType.expense.color, equals(Colors.red));
      expect(TransactionType.expense.symbol, equals('-'));
    });
  });
}
