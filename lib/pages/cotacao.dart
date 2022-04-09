import 'package:desafio_flutter/components/action_button.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Selecione as moedas a serem cotadas em ',
                      style: TextStyle(fontSize: 18),
                      children: [
                        TextSpan(
                            text: 'Dólar Americano',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]),
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
              Align(
                alignment: Alignment.bottomRight,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 43,
                    minWidth: 140,
                  ),
                  child: ActionButton(
                    text: 'Próximo',
                    onPressed: () {
                      return Future.delayed(const Duration(seconds: 2));
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20)
            ]),
      ),
    );
  }
}
