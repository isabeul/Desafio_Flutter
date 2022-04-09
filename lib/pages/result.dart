import 'package:flutter/material.dart';
import 'package:desafio_flutter/components/coin_list.dart';

import 'package:desafio_flutter/values/colors.dart';

import '../components/coin_card.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final coinList = {
    "BRL": "Real",
    "USD": "Dólar Americano",
    "GBP": "Libra Esterlina",
    "JPY": "Iene",
    "ARS": "Peso Argentino",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        title: const Text('Resultado'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Confira os valores de compra referentes ao ',
                  style: TextStyle(fontSize: 18),
                  children: [
                    TextSpan(
                      text: 'Dólar Americano',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CoinCard(
              name: "Real",
              value: 5,
            ),
            const CoinCard(
              name: "Dólar Americano",
              value: 3,
            )
          ],
        ),
      ),
    );
  }
}
