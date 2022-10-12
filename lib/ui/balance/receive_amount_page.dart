import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_wallet/model/wallet.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/component/snack_bars.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReceiveAmountPage extends StatelessWidget {
  final Wallet _currentWallet;

  const ReceiveAmountPage(this._currentWallet, {Key? key}) : super(key: key);

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
                child: Text(AppLocalizations.of(context)!.receiveTitle,
                    style: const TextStyle(
                      color: CustomColors.qrlLightBlueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 48),
              child:
                  Text(AppLocalizations.of(context)!.yourPublicWalletAddress),
            )),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 32),
              child: SelectableText(
                "Q${_currentWallet.address}",
                textAlign: TextAlign.center,
              ),
            )),
            Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: CustomColors.qrlYellowColor,
                      width: 1,
                    )),
                child: QrImage(
                  data: "Q${_currentWallet.address}",
                  version: QrVersions.auto,
                  size: 200.0,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 36),
                  child: SizedBox(
                    width: 256,
                    child: QrlButton(
                      () async {
                        Clipboard.setData(ClipboardData(
                                text: "Q${_currentWallet.address}"))
                            .then((value) {
                          SnackBars.showSnackBar(context,
                              AppLocalizations.of(context)!.copiedToClipboard);
                        });
                      },
                      text: AppLocalizations.of(context)!.copy,
                      baseColor: CustomColors.qrlLightBlueColor,
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
