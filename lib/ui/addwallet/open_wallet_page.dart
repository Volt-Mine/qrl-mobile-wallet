import 'package:flutter/material.dart';
import 'package:mobile_wallet/ui/addwallet/open_wallet_hex_seed_page.dart';
import 'package:mobile_wallet/ui/addwallet/open_wallet_mnemonic_page.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OpenWalletPage extends StatelessWidget {
  const OpenWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QrlAppBar(),
      body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(AppLocalizations.of(context)!.confirm,
                    style: const TextStyle(
                      color: CustomColors.qrlLightBlueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              ),
            ),
             Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Text(AppLocalizations.of(context)!.openExistingWallet),
            )),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 256,
                  child: QrlButton(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const OpenWalletMnemonicPage()),
                      );
                    },
                    text: AppLocalizations.of(context)!.openWithMnemonics,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 256,
                  child: QrlButton(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const OpenWalletHexSeedPage()),
                      );
                    },
                    text: AppLocalizations.of(context)!.openWithHexseed,
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
