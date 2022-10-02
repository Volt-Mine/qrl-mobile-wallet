import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_wallet/ui/util/string_util.dart';

void main() {
  test("test reverse", () async {
    String reverseReversed = StringUtil.reverse("reversed");
    expect(reverseReversed, "desrever");
  });
  test("test reverse", () async {
    String amount = StringUtil.formatAmount(1000000);
    expect(amount, "0.001");
  });
  test("test toBytes", () async {
    List<int> bytes = StringUtil.toBytes(
        "0105003a93458859bb6658b2924a3060d633979b086cfadd5b760879cc786e2e36f770a29e5d97");
    expect(bytes, <int>[
      1,
      5,
      0,
      58,
      147,
      69,
      136,
      89,
      187,
      102,
      88,
      178,
      146,
      74,
      48,
      96,
      214,
      51,
      151,
      155,
      8,
      108,
      250,
      221,
      91,
      118,
      8,
      121,
      204,
      120,
      110,
      46,
      54,
      247,
      112,
      162,
      158,
      93,
      151
    ]);
  });
}
