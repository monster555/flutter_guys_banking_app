import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/core/constants.dart';
import 'package:flutter_guys_banking_app/ui/widgets/balance_card/widgets/balance_and_date.dart';
import 'package:flutter_guys_banking_app/ui/widgets/balance_card/widgets/balance_with_subtitle.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.darkBlue,
            AppColors.lighterBlue,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BalanceAndDate(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const BalanceWithSubtitle(),
              Image.asset('assets/paypal-logo.png'),
            ],
          ),
        ],
      ),
    );
  }
}
