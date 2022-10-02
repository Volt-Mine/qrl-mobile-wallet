import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_wallet/service/authentication_service.dart';
import 'package:mobile_wallet/service/service_locator.dart';
import 'package:mobile_wallet/service/wallet_service.dart';
import 'package:mobile_wallet/ui/addwallet/add_wallet_page.dart';
import 'package:mobile_wallet/ui/main_page.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:secure_application/secure_application.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? _walletCount;

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  setupServiceLocator(sharedPreferences);
  WalletService walletService = getIt<WalletService>();
  _walletCount = await walletService.getWalletCount();
  if (!await getIt<AuthenticationService>().authenticate()) {
    exit(0);
  }
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(QrlMobileWalletApp()));
}

class QrlMobileWalletApp extends StatelessWidget {
  QrlMobileWalletApp({super.key});

  final SecureApplicationController _secureApplicationController =
      SecureApplicationController(SecureApplicationState());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    _secureApplicationController.secure();
    return MaterialApp(
      title: 'QRL Mobile Wallet',
      theme: ThemeData(
        canvasColor: CustomColors.qrlDarkBlueMaterial,
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            color: CustomColors.qrlDarkBlueMaterial),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
              fontFamily: "Roboto-Medium",
            ),
      ),
      initialRoute:
          _walletCount == null || _walletCount == 0 ? "/add-wallet" : "/main",
      routes: {
        '/add-wallet': (context) => const AddWalletPage(),
        "/main": (context) => const MainPage(),
      },
      builder: (context, child) => SecureApplication(
        secureApplicationController: _secureApplicationController,
        onNeedUnlock: (secureApplicationController) async {
          if (secureApplicationController != null) {
            if (await getIt<AuthenticationService>().authenticate()) {
              secureApplicationController.authSuccess(unlock: true);
            } else {
              secureApplicationController.authFailed(unlock: false);
            }
          }
          return null;
        },
        child: SecureGate(blurr: 100, opacity: 0, child: child ?? Container()),
      ),
    );
  }
}
