import 'package:flutter/material.dart';

/// Extension on [DateTime] to add a formattedDate getter.
///
/// This getter returns the date as a string in the format 'day/month/year'.
///
/// Note: This is for demonstration purposes only. In a real-world application,
/// date and time formats should be handled differently, taking into account
/// factors such as localization, user preferences, and more.
extension FormatDate on DateTime {
  String get formattedDate => '$day/$month/$year';
}

/// Extension on [BuildContext] to add a textTheme getter.
///
/// This getter returns the [TextTheme] of the current theme context.
extension ThemeX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
