import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/ui/widgets/balance_card/balance_card.dart';
import 'package:flutter_guys_banking_app/ui/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter_guys_banking_app/ui/widgets/transactions/transactions_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: const Column(
        children: [
          BalanceCard(),
          Expanded(
            child: TransactionsList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
