import 'package:desafio_flutter/core/repositories/coin_api_repository.dart';
import 'package:flutter/material.dart';

import 'coin_card.dart';

class CoinList extends StatefulWidget {
  const CoinList({Key? key, required this.coinList}) : super(key: key);
  final Map<String, String> coinList;

  @override
  State<CoinList> createState() => _CoinListState();
}

class _CoinListState extends State<CoinList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.coinList.length,
      itemBuilder: ((context, index) {
        final entries = widget.coinList.entries.toList(growable: false);
        return CoinCard(
          name: entries[index].value,
          onTap: () async {
            final repo = CoinApiRepository();
            final result = await repo.last('BRL', [entries[index].key]);
            print(result.toJson());
          },
        );
      }),

      // child: Column(
      //   children: const <Widget>[
      //     Icon(Icons.attach_money_sharp),
      //     TextField(
      //       decoration: InputDecoration(
      //         hintText: 'Real',
      //       ),
      //     ),
      //     TextField(
      //       decoration: InputDecoration(
      //         hintText: 'Dolar Americano',
      //       ),
      //     ),
      //     TextField(
      //       decoration: InputDecoration(
      //         hintText: 'Libra Esterlina',
      //       ),
      //     ),
      //     TextField(
      //       decoration: InputDecoration(
      //         hintText: 'Iene',
      //       ),
      //     ),
      //     TextField(
      //       decoration: InputDecoration(
      //         hintText: 'Peso Argentino',
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
