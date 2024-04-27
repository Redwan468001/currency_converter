import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CurrencyConvertPage extends StatelessWidget {
  const CurrencyConvertPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.green,
        width: 5.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Currency tools',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter currency in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefix: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: false,
                  signed: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.green,
        width: 10,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(20),
    );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 169, 167, 167),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.black,
              child: const Text(
                'Hello, Redwan, Good to see you.',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in usd',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefix: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.5,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),

            // Button
            TextButton(
              onPressed: () {
                debugPrint('Button clicked');
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                fixedSize: MaterialStatePropertyAll(Size(200, 50)),
              ),
              child: const Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}
