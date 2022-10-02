import 'package:local_auth/local_auth.dart';
import 'package:mobile_wallet/model/app_settings.dart';
import 'package:mobile_wallet/service/settings_service.dart';

class AuthenticationService {
  final SettingsService settingsService;

  AuthenticationService(this.settingsService);

  Future<bool> authenticate() async {
    AppSettings appSettings = await settingsService.getAppSettings();
    if (appSettings.useDeviceLogin) {
      final LocalAuthentication auth = LocalAuthentication();
      if (await hasDeviceAuthentication()) {
        bool authenticated = await auth.authenticate(
          localizedReason: 'Authentication required to continue',
          options: const AuthenticationOptions(
            stickyAuth: true,
          ),
        );
        return authenticated;
      }
    }
    return true;
  }

  Future<bool> hasDeviceAuthentication() async {
    final LocalAuthentication auth = LocalAuthentication();
    return await auth.canCheckBiometrics && await auth.isDeviceSupported();
  }
}
