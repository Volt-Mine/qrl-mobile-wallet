import 'package:mobile_wallet/model/app_settings.dart';
import 'package:mobile_wallet/service/shared_preference_service.dart';

class SettingsService {
  final SharedPreferenceService _sharedPreferenceService;
  AppSettings? _appSettings;

  SettingsService(this._sharedPreferenceService);

  Future<AppSettings> getAppSettings() async {
    if (_appSettings == null) {
      bool useDeviceLogin =
          (await _sharedPreferenceService.getIntValue("use-device-login") ??
                      0) ==
                  0
              ? false
              : true;
      String nodeUrl =
          await _sharedPreferenceService.getStringValue("node-url") ??
              "mainnet-1.automated.theqrl.org";
      int port = await _sharedPreferenceService.getIntValue("port") ?? 19009;
      _appSettings = AppSettings(useDeviceLogin, nodeUrl, port);
    }
    return _appSettings!;
  }

  Future<void> saveAppSettings(AppSettings appSettings) async {
    _sharedPreferenceService.setIntValue(
        "use-device-login", appSettings.useDeviceLogin ? 1 : 0);
    _sharedPreferenceService.setStringValue("node-url", appSettings.nodeUrl);
    _sharedPreferenceService.setIntValue("port", appSettings.port);
    _appSettings = appSettings;
  }

  Future<int> getFeeSetting() async {
    return await _sharedPreferenceService.getIntValue("fee") ?? 1000000;
  }

  Future<void> updateFeeSetting(int fee) async {
    _sharedPreferenceService.setIntValue("fee", fee);
  }
}
