import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_wallet/service/shared_preference_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  SharedPreferenceService? sharedPreferenceService;
  setUp(() async {
    SharedPreferences.setMockInitialValues({
      "test-1": "value-1",
      "test-2": 10,
    });
    sharedPreferenceService =
        SharedPreferenceService(await SharedPreferences.getInstance());
  });

  test("test default values", () async {
    String test1 =
        await sharedPreferenceService!.getStringValue("test-1") ?? "";
    expect(test1, "value-1");
    int test2 = await sharedPreferenceService!.getIntValue("test-2") ?? 0;
    expect(test2, 10);
  });

  test("test update values", () async {
    await sharedPreferenceService!.setStringValue("test-1", "update-1");
    await sharedPreferenceService!.setIntValue("test-2", 25);
    String test1 =
        await sharedPreferenceService!.getStringValue("test-1") ?? "";
    expect(test1, "update-1");
    int test2 = await sharedPreferenceService!.getIntValue("test-2") ?? 0;
    expect(test2, 25);
  });
}
