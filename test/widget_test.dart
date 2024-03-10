import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/main.dart';
import 'package:flutter_guys_banking_app/models/transaction_model.dart';
import 'package:flutter_guys_banking_app/ui/home_page.dart';
import 'package:flutter_guys_banking_app/ui/widgets/balance_card/balance_card.dart';
import 'package:flutter_guys_banking_app/ui/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter_guys_banking_app/ui/widgets/transactions/widgets/transaction_icon.dart';
import 'package:flutter_guys_banking_app/ui/widgets/transactions/widgets/transaction_item.dart';
import 'package:flutter_guys_banking_app/ui/widgets/transactions/widgets/transaction_name_and_label.dart';
import 'package:flutter_guys_banking_app/ui/widgets/transactions/widgets/transaction_price_and_date.dart';
import 'package:flutter_test/flutter_test.dart';

/// Main function for running widget tests related to the home page and transaction items.
void main() {
  late Transaction income, expense;

  /// Set up transactions before running tests.
  setUp(() {
    expense = Transaction(
      icon: 'assets/dropbox.png',
      name: 'Dropbox Plan',
      label: 'Subscription',
      transactionType: TransactionType.expense,
      amount: 144.00,
      date: DateTime(2023, 10, 27),
    );

    income = Transaction(
      icon: 'assets/briefcase.png',
      name: 'Freelance Work',
      label: 'Income',
      transactionType: TransactionType.income,
      amount: 32.00,
      date: DateTime(2023, 10, 27),
    );
  });

  testWidgets('Home page should render all expected widgets',
      (WidgetTester tester) async {
    // Pump the widget tree with MyApp as the root widget.
    await tester.pumpWidget(const MyApp());

    // Check if a widget of type CustomAppBar is present in the widget tree.
    expect(find.byType(CustomAppBar), findsOneWidget);

    // Check if a widget of type HomePage is present in the widget tree.
    expect(find.byType(HomePage), findsOneWidget);

    // Check if a widget of type BalanceCard is present in the widget tree.
    expect(find.byType(BalanceCard), findsOneWidget);

    // Check if a widget of type TransactionsList is present in the widget tree.
  });

  group('TransactionItem', () {
    testWidgets('should render all expected widgets and properties',
        (WidgetTester tester) async {
      // Pump the widget tree with TransactionItem as the root widget.
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: TransactionItem(expense),
        ),
      );

      // Check if a widget of type TransactionIcon is present in the widget tree.
      expect(find.byType(TransactionIcon), findsOneWidget);

      // Check if a widget of type TransactionNameAndLabel is present in the widget tree.
      expect(find.byType(TransactionNameAndLabel), findsOneWidget);

      // Check if a widget of type TransactionPriceAndDate is present in the widget tree.
      expect(find.byType(TransactionPriceAndDate), findsOneWidget);

      // Find the widget with the text equal to the name of the expense.
      final nameFinder = find.text(expense.name);

      // Get the actual widget from the finder.
      final nameWidget = tester.widget(nameFinder) as Text;

      // Check if the widget is present in the widget tree.
      expect(nameFinder, findsOneWidget);

      // Check if the widget's data is equal to the name of the expense.
      expect(nameWidget.data, 'Dropbox Plan');

      // Check if a widget with the text equal to the label of the expense is present in the widget tree.
      expect(find.text(expense.label), findsOneWidget);

      // Check if a widget with the text equal to the formatted date of the expense is present in the widget tree.
      expect(find.text(expense.formattedDate), findsOneWidget);

      // Check if a widget with the text equal to the formatted price of the expense is present in the widget tree.
      expect(find.text(expense.formattedPrice), findsOneWidget);
    });

    testWidgets(
        'TransactionIcon should render with correct icon and properties',
        (WidgetTester tester) async {
      // Pump the widget tree with TransactionIcon as the root widget.
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: TransactionIcon(expense.icon),
        ),
      );

      // Verify the wigetof type TransactionIcon is present in the widget tree.
      expect(find.byType(TransactionIcon), findsOneWidget);

      // Verify that a widget of type Image is present in the widget tree.
      expect(find.byType(Image), findsOneWidget);

      // Verify that a widget of type Container is present in the widget tree.
      expect(find.byType(Container), findsOneWidget);

      // Verify that a widget of type Container is present in the widget tree.
      expect(find.byType(Container), findsOneWidget);

      // Get the first widget of type Container from the widget tree.
      final Container container = tester.firstWidget(find.byType(Container));

      // Get the decoration property of the container which is of type BoxDecoration.
      final BoxDecoration decoration = container.decoration as BoxDecoration;

      // Get the first widget of type Image from the widget tree.
      final Image image = tester.firstWidget(find.byType(Image));

      // Verify that the image property of the Image widget is the same as the icon of the expense.
      expect(image.image, AssetImage(expense.icon));

      // Verify that the color property of the BoxDecoration is grey shade 200.
      expect(decoration.color, Colors.grey.shade200);

      // Verify that the borderRadius property of the BoxDecoration is circular with radius 8.
      expect(decoration.borderRadius, BorderRadius.circular(8));
    });
  });

  group('TransactionPriceAndDate', () {
    testWidgets('should render with correct price and properties',
        (WidgetTester tester) async {
      // Build the widget tree with TransactionPriceAndDate as the root widget.
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: TransactionPriceAndDate(expense),
        ),
      );

      // Verify that a widget of type TransactionPriceAndDate is present in the widget tree.
      expect(find.byType(TransactionPriceAndDate), findsOneWidget);

      // Verify that a widget of type Column is present in the widget tree.
      expect(find.byType(Column), findsOneWidget);

      // Verify that two widgets of type Text are present in the widget tree.
      expect(find.byType(Text), findsNWidgets(2));

      // Find the widget with the text equal to the formatted price of the expense.
      final textFinder = find.text('- \$144.00');

      // Get the actual widget from the finder.
      final textWidget = tester.widget(textFinder) as Text;

      // Verify that the widget's data is equal to the formatted price of the expense.
      expect(textWidget.data, expense.formattedPrice);

      // Verify that the color property of the widget's style is the same as the color of the expense transaction type.
      expect(textWidget.style!.color, expense.transactionType.color);
    });

    testWidgets(
        'should correctly render income transaction with expected properties',
        (WidgetTester tester) async {
      // Build the widget tree with TransactionPriceAndDate as the root widget.
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: TransactionPriceAndDate(income),
        ),
      );

      // Verify that a widget of type TransactionPriceAndDate is present in the widget tree.
      expect(find.byType(TransactionPriceAndDate), findsOneWidget);

      // Verify that a widget of type Column is present in the widget tree.
      expect(find.byType(Column), findsOneWidget);

      // Verify that two widgets of type Text are present in the widget tree.
      expect(find.byType(Text), findsNWidgets(2));

      // Find the widget with the text equal to the formatted price of the income.
      final textFinder = find.text('+ \$32.00');

      // Get the actual widget from the finder.
      final textWidget = tester.widget(textFinder) as Text;

      // Verify that the widget's data is equal to the formatted price of the income.
      expect(textWidget.data, income.formattedPrice);

      // Verify that the color property of the widget's style is the same as the color of the income transaction type.
      expect(textWidget.style!.color, TransactionType.income.color);
    });

    testWidgets(
        'should correctly render expense transaction with expected properties',
        (WidgetTester tester) async {
      // Build the widget tree with TransactionPriceAndDate as the root widget.
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: TransactionPriceAndDate(expense),
        ),
      );

      // Verify that a widget of type TransactionPriceAndDate is present in the widget tree.
      expect(find.byType(TransactionPriceAndDate), findsOneWidget);

      // Verify that a widget of type Column is present in the widget tree.
      expect(find.byType(Column), findsOneWidget);

      // Verify that two widgets of type Text are present in the widget tree.
      expect(find.byType(Text), findsNWidgets(2));

      // Find the widget with the text equal to the formatted price of the expense.
      final textFinder = find.text('- \$144.00');

      // Get the actual widget from the finder.
      final textWidget = tester.widget(textFinder) as Text;

      // Verify that the widget's data is equal to the formatted price of the expense.
      expect(textWidget.data, expense.formattedPrice);

      // Verify that the color property of the widget's style is the same as the color of the expense transaction type.
      expect(textWidget.style!.color, TransactionType.expense.color);
    });
  });
}
