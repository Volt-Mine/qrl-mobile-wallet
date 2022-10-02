import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile_wallet/model/market_data.dart';

class MarketService {
  MarketService();

  Future<MarketData?> getMarketData() async {
    final response =
        await http.get(Uri.parse("https://market-data.automated.theqrl.org/"));
    if (response.statusCode == 200) {
      return MarketData.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}
