import 'package:currency_converter/currency_converter_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class CurrencyConverterApp extends StatelessWidget {
  const CurrencyConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConvertPage(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}
