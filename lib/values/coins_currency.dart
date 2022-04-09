// ignore_for_file: constant_identifier_names

enum CoinCurrency{
   
  USD,
  USDT,
  CAD,
  EUR,
  GBP,
  ARS,
  BTC,
  LTC,
  JPY,
  CHF,
  AUD,
  CNY,
  ILS,
  ETH,
  XRP,
  DOGE,
}

extension CoinCurrencyHelper on CoinCurrency {
  String get fullName {
    switch (this) {
      case CoinCurrency.USD:
        return "Dólar Americano";
      case CoinCurrency.USDT:
        return "Dólar Americano Turismo";
      case CoinCurrency.CAD:
        return "Dólar Canadense";
      case CoinCurrency.EUR:
        return "Euro";
      case CoinCurrency.GBP:
        return "Libra Esterlina";
      case CoinCurrency.ARS:
        return "Peso Argentino";
      case CoinCurrency.BTC:
        return "Bitcoin";
      case CoinCurrency.LTC:
        return "Litecoin";
      case CoinCurrency.JPY:
        return "Iene Japonês";
      case CoinCurrency.CHF:
        return "Franco Suíço";
      case CoinCurrency.AUD:
        return "Dólar Australiano";
      case CoinCurrency.CNY:
        return "Yuan Chinês";
      case CoinCurrency.ILS:
        return "Novo Shekel Israelense";
      case CoinCurrency.ETH:
        return "Ethereum";
      case CoinCurrency.XRP:
        return "XRP";
      case CoinCurrency.DOGE:
        return "Dogecoin";
    }
  }
}

