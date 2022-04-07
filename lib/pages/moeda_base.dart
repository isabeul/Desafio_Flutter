import 'package:desafio_flutter/components/coin_list.dart';

import 'package:desafio_flutter/values/colors.dart';
import 'package:flutter/material.dart';

class MoedaBasePage extends StatefulWidget {
  const MoedaBasePage({Key? key}) : super(key: key);

  @override
  State<MoedaBasePage> createState() => _MoedaBasePageState();
}

class _MoedaBasePageState extends State<MoedaBasePage> {
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
        title: const Text('Moeda Base'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.black,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Selecione uma moeda base para as conversões'),
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