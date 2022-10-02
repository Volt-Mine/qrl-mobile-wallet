import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  SharedPreferenceService(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  Future<void> setStringValue(String key, String value) async {
    _sharedPreferences.setString(key, value);
  }

  Future<String?> getStringValue(String key) async {
    return _sharedPreferences.getString(key);
  }

  Future<void> setIntValue(String key, int value) async {
    _sharedPreferences.setInt(key, value);
  }

  Future<int?> getIntValue(String key) async {
    return _sharedPreferences.getInt(key);
  }
}
