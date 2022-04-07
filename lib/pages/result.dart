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
        title: const Text('Cotação'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.black,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: RichText(
                textAlign: TextAlign.center,
                strutStyle: StrutStyle.fromTextStyle(const TextStyle(fontSize: 18)),
                text: const TextSpan(
                    text: 'Selecione as moedas a serem cotadas em \n',
                    children: [
                      TextSpan(
                          text: 'Dólar Americano',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]),
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
    );
  }
}
