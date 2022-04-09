import 'package:desafio_flutter/components/coin_list.dart';

import 'package:desafio_flutter/values/colors.dart';
import 'package:flutter/material.dart';

class MoedaBasePage extends StatefulWidget {
  final Map<String, String> coinList;
  const MoedaBasePage({Key? key, required this.coinList}) : super(key: key);

  @override
  State<MoedaBasePage> createState() => _MoedaBasePageState();
}

class _MoedaBasePageState extends State<MoedaBasePage> {
  
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Selecione uma moeda base para as conversões \n ',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Expanded(
                child: CoinList(
                  coinList:widget.coinList,
                ),
              ),
            ],
          ),
        ));
  }
}
