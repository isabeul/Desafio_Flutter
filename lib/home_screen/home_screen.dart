import 'package:desafio_flutter/pages/cotacao.dart';
import 'package:desafio_flutter/pages/moeda_base.dart';
import 'package:desafio_flutter/pages/result.dart';
import 'package:desafio_flutter/values/coins_currency.dart';
import 'package:desafio_flutter/values/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  late TabController _tabController;

  Map<String, String> get coinList {
    final list = <String, String>{};
    for (final currency in CoinCurrency.values) {
      list[currency.name] = currency.fullName;
    }
    return list;
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                _tabController.index = index;
              },
              controller: _pageController,
              children:  [
                MoedaBasePage(
                  coinList: coinList,
                ),
                CotacaoPage(
                    coinList: coinList,
                    ),
                ResultPage(),
              ],
            ),
          ),
          TabPageSelector(
            controller: _tabController,
            color: AppColors.gray,
            indicatorSize: 20,
            selectedColor: AppColors.blue,
          )
        ],
      ),
    );
  }
}
