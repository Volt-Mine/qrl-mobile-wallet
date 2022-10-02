import 'package:decimal/decimal.dart';

class MarketData {
  final Decimal _price;
  final Decimal _marketCap;
  final Decimal _change24Hr;

  const MarketData(
    this._price,
    this._marketCap,
    this._change24Hr,
  );

  factory MarketData.fromJson(Map<String, dynamic> json) {
    return MarketData(
      Decimal.parse(json['price'].toString()),
      Decimal.parse(json['market_cap'].toString()),
      Decimal.parse(json['change_24hr'].toString()),
    );
  }

  Decimal get price => _price;

  Decimal get marketCap => _marketCap;

  Decimal get change24Hr => _change24Hr;
}
