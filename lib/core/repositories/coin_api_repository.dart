import 'dart:convert';

import 'package:desafio_flutter/core/models/currency_dto.dart';
import 'package:http/http.dart' as http;

class CoinApiRepository {
  static const _domain = "economia.awesomeapi.com.br";

  Uri buildUri(final String path, {Map<String, String>? queryParams}) {
    return Uri.https(_domain, path, queryParams);
  }

  Future<CoinApiResultDto> last(String from, List<String> to) async {
    final buffer = StringBuffer();
    var counter = 0;
    for (final element in to) {
      if (counter > 0) {
        buffer.write(',');
      }
      counter++;
      buffer.write('$element-$from');
    }
    final uri = buildUri('last/${buffer.toString()}');
    final response = await http.get(uri);
    if (response.statusCode >= 200 || response.statusCode <300){
      final jsonResponse = jsonDecode(response.body);
      return CoinApiResultDto.fromJson(Map <String, dynamic>.from(jsonResponse));
    }
    return CoinApiResultDto.fromJson({});
  }
}
