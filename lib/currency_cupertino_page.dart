import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyConverterCpage extends StatefulWidget {
  const CurrencyConverterCpage({super.key});

  @override
  State<CurrencyConverterCpage> createState() => _CurrencyConverterCpageState();
}

class _CurrencyConverterCpageState extends State<CurrencyConverterCpage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 115;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.activeBlue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'In BDT ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
            style: const TextStyle(
              color: CupertinoColors.activeBlue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(
                color: CupertinoColors.activeOrange,
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              placeholder: 'Please enter the amount in USD',
              prefix: const Icon(CupertinoIcons.money_dollar),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ),
          CupertinoButton(
            onPressed: convert,
            color: CupertinoColors.activeBlue,
            child: const Text("Convert"),
          )
        ],
      ),
    );
  }
}
