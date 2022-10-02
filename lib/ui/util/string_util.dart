import 'package:decimal/decimal.dart';

class StringUtil {
  static String reverse(String toReverse) {
    StringBuffer stringBuffer = StringBuffer();
    for (var i = toReverse.length - 1; i >= 0; --i) {
      stringBuffer.write(toReverse[i]);
    }
    return stringBuffer.toString();
  }

  static String formatAmount(int amount) {
    return (Decimal.fromInt(amount) / Decimal.fromInt(1000000000))
        .toDecimal()
        .toString();
  }

  static List<int> toBytes(String data) {
    List<int> byteData = List.filled(data.length ~/ 2, 0);
    for (int i = 0; i < data.length; i += 2) {
      byteData[i ~/ 2] = (int.parse(data[i], radix: 16) << 4) +
          int.parse(data[i + 1], radix: 16);
    }
    return byteData;
  }
}
