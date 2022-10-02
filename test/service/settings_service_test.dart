import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_wallet/model/app_settings.dart';
import 'package:mobile_wallet/service/settings_service.dart';
import 'package:mobile_wallet/service/shared_preference_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  SettingsService? settingsService;
  setUp(() async {
    SharedPreferences.setMockInitialValues({
      "use-device-login": 1,
      "node-url": "test.node.url.com",
      "port": 12345,
      "fee": 100,
    });
    settingsService = SettingsService(
        SharedPreferenceService(await SharedPreferences.getInstance()));
  });

  test("test default values", () async {
    AppSettings appSettings = await settingsService!.getAppSettings();
    expect(appSettings.useDeviceLogin, true);
    expect(appSettings.nodeUrl, "test.node.url.com");
    expect(appSettings.port, 12345);
    int fee = await settingsService!.getFeeSetting();
    expect(fee, 100);
  });

  test("test update values", () async {
    await settingsService!
        .saveAppSettings(AppSettings(false, "test.update.node.com", 54321));
    await settingsService!.updateFeeSetting(500);
    AppSettings appSettings = await settingsService!.getAppSettings();
    expect(appSettings.useDeviceLogin, false);
    expect(appSettings.nodeUrl, "test.update.node.com");
    expect(appSettings.port, 54321);
    int fee = await settingsService!.getFeeSetting();
    expect(fee, 500);
  });
}
