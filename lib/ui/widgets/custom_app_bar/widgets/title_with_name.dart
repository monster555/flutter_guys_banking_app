import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/core/extensions.dart';

class TitleWithName extends StatelessWidget {
  const TitleWithName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back',
          style: context.textTheme.bodySmall,
        ),
        Text(
          'John Doe',
          style: context.textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
