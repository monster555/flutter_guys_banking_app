import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/core/extensions.dart';
import 'package:flutter_guys_banking_app/ui/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Guys Banking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          context.textTheme,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
