class CoinApiResultDto {
  final Map<String, CurrencyDto> results;

  const CoinApiResultDto() : results = const <String, CurrencyDto>{};

  CoinApiResultDto.fromJson(Map<String, dynamic> json)
      : results = <String, CurrencyDto>{} {
    for (final entry in json.entries) {
      results[entry.key] = CurrencyDto.fromJson(entry.value);
    }
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    for (final entry in results.entries) {
      json[entry.key] = entry.value.toJson();
    }
    return json;
  }

  bool get isEmpty {
    return results.isEmpty;
  }
}

class CurrencyDto {
  final String? code;
  final String? codein;
  final String? name;
  final String? high;
  final String? low;
  final String? varBid;
  final String? pctChange;
  final String? bid;
  final String? ask;
  final String? timestamp;
  final String? createDate;

  const CurrencyDto({
    this.code,
    this.codein,
    this.name,
    this.high,
    this.low,
    this.varBid,
    this.pctChange,
    this.bid,
    this.ask,
    this.timestamp,
    this.createDate,
  });

  CurrencyDto.fromJson(Map<String, dynamic> json)
      : code = json['code'],
        codein = json['codein'],
        name = json['name'],
        high = json['high'],
        low = json['low'],
        varBid = json['varBid'],
        pctChange = json['pctChange'],
        bid = json['bid'],
        ask = json['ask'],
        timestamp = json['timestamp'],
        createDate = json['create_date'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{
      "code": code,
      "codein": codein,
      "name": name,
      "high": high,
      "low": low,
      "varBid": varBid,
      "pctChange": pctChange,
      "bid": bid,
      "ask": ask,
      "timestamp": timestamp,
      "create_date": createDate,
    };

    return data;
  }
}
