import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_wallet/ui/addwallet/create_wallet_page.dart';
import 'package:mobile_wallet/ui/addwallet/open_wallet_page.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';

class AddWalletPage extends StatelessWidget {
  const AddWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QrlAppBar(),
      body: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            'assets/images/orange-dots.png',
            scale: 0.9,
          ),
        ),
        Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/qrl-tree.png',
                height: 240,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(AppLocalizations.of(context)!.welcomeTo,
                      style: const TextStyle(
                        color: CustomColors.qrlYellowColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(AppLocalizations.of(context)!.ledger,
                      style: const TextStyle(
                        color: CustomColors.qrlYellowColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(AppLocalizations.of(context)!.onBoard),
              )),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: SizedBox(
                    width: 144,
                    child: QrlButton(
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateWalletPage()),
                        );
                      },
                      text: AppLocalizations.of(context)!.createWallet,
                      baseColor: CustomColors.qrlLightBlueColor,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: SizedBox(
                    width: 144,
                    child: QrlButton(
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OpenWalletPage()),
                        );
                      },
                      text: AppLocalizations.of(context)!.addWallet,
                    ),
                  ),
                ),
              ),
            ]),
      ]),
    );
  }
}
