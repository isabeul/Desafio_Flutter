import 'package:desafio_flutter/components/coin_list.dart';

import 'package:desafio_flutter/values/colors.dart';
import 'package:flutter/material.dart';

class CotacaoPage extends StatefulWidget {
  const CotacaoPage({Key? key}) : super(key: key);

  @override
  State<CotacaoPage> createState() => _CotacaoPageState();
}

class _CotacaoPageState extends State<CotacaoPage> {
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
                strutStyle: StrutStyle.fromTextStyle(TextStyle(fontSize: 18)),
                text: TextSpan(
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
          Expanded(
            child: CoinList(
              coinList: coinList,
            ),
          ),
        ],
      ),
    );
  }
}
