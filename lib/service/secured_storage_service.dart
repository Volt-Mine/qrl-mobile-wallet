import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecuredStorageService {
  final FlutterSecureStorage _secureStorage;

  SecuredStorageService(this._secureStorage);

  Future<void> setValue(String key, String value) async {
    _secureStorage.write(
        key: key,
        value: value,
        aOptions: _getAndroidOptions(),
        iOptions: _getIOSOptions());
  }

  Future<String?> getValue(String key) async {
    return _secureStorage.read(
        key: key, aOptions: _getAndroidOptions(), iOptions: _getIOSOptions());
  }

  Future<void> deleteValue(String key) async {
    _secureStorage.delete(
        key: key, aOptions: _getAndroidOptions(), iOptions: _getIOSOptions());
  }

  AndroidOptions _getAndroidOptions() {
    return const AndroidOptions(
      encryptedSharedPreferences: true,
    );
  }

  IOSOptions _getIOSOptions() => const IOSOptions(
        accessibility: KeychainAccessibility.first_unlock,
      );
}
