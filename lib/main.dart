import 'package:currency_converter/currency_converter_app.dart';
import 'package:currency_converter/currency_cupertino_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCuperTinoApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConvertPage(),
    );
  }
}

class MyCuperTinoApp extends StatelessWidget {
  const MyCuperTinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCpage(),
    );
  }
}
