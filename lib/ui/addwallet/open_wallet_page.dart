import 'package:flutter/material.dart';
import 'package:mobile_wallet/ui/addwallet/open_wallet_hex_seed_page.dart';
import 'package:mobile_wallet/ui/addwallet/open_wallet_mnemonic_page.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';

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
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Wallet Setup",
                    style: TextStyle(
                      color: CustomColors.qrlLightBlueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              ),
            ),
            const Center(
                child: Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Text("Open existing wallet"),
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
                    text: "Open with mnemonic",
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
                    text: "Open with hexseed",
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
