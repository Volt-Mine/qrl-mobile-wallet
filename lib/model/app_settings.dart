import 'package:mobile_wallet/model/app_language.dart';

class AppSettings {
  bool useDeviceLogin;
  String nodeUrl;
  int port;
  AppLanguage? appLanguage;

  AppSettings(this.useDeviceLogin, this.nodeUrl, this.port, this.appLanguage);
}
