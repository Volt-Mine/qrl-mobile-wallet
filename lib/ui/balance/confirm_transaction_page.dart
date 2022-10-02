import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_wallet/model/wallet.dart';
import 'package:mobile_wallet/service/authentication_service.dart';
import 'package:mobile_wallet/service/service_locator.dart';
import 'package:mobile_wallet/service/wallet_service.dart';
import 'package:mobile_wallet/ui/component/dialogs.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/component/snack_bars.dart';
import 'package:mobile_wallet/ui/main_page.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:mobile_wallet/ui/util/string_util.dart';
import 'package:wakelock/wakelock.dart';

class ConfirmTransactionPage extends StatefulWidget {
  final Wallet _wallet;
  final String _receiverWalletAddress;
  final int _amount;
  final int _fee;
  final int _otsIndex;

  const ConfirmTransactionPage(this._wallet, this._receiverWalletAddress,
      this._amount, this._fee, this._otsIndex,
      {Key? key})
      : super(key: key);

  @override
  State<ConfirmTransactionPage> createState() => _ConfirmTransactionPageState();
}

class _ConfirmTransactionPageState extends State<ConfirmTransactionPage> {
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
                  child: Text("Send",
                      style: TextStyle(
                        color: CustomColors.qrlLightBlueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
              ),
              const Center(
                  child: Padding(
                padding: EdgeInsets.only(bottom: 48),
                child: Text("Confirm transaction"),
              )),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Center(
                    child: Text(
                  "Amount",
                  style: TextStyle(
                    color: CustomColors.qrlYellowColor,
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 48),
                child: Center(
                    child: Text(
                  "${StringUtil.formatAmount(widget._amount)} QRL",
                )),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Center(
                    child: Text(
                  "Sending to wallet address",
                  style: TextStyle(
                    color: CustomColors.qrlYellowColor,
                  ),
                )),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 48),
                child: SelectableText(
                  widget._receiverWalletAddress,
                  textAlign: TextAlign.center,
                ),
              )),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 36),
                    child: SizedBox(
                      width: 256,
                      child: QrlButton(
                        () {
                          _onPressConfirmTransaction();
                        },
                        text: "CONFIRM",
                        baseColor: CustomColors.qrlLightBlueColor,
                      ),
                    ),
                  ),
                ),
              ),
            ]));
  }

  void _onPressConfirmTransaction() async {
    try {
      if (await getIt<AuthenticationService>().authenticate()) {
        Wakelock.enable();
        Dialogs.showLoadingDialog(context, "Sending transaction...");
        WalletService walletService = getIt<WalletService>();
        await walletService.sendTransaction(
            widget._wallet.walletNumber,
            widget._amount,
            widget._receiverWalletAddress,
            widget._otsIndex,
            widget._fee);
        if (mounted) {
          Future.delayed(const Duration(milliseconds: 1000), () {
            Dialogs.hideLoadingDialog(context);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const MainPage()),
                (route) => false);
          });
        }
      } else {
        SnackBars.showSnackBar(context, "Authentication failed!");
      }
    } on Exception catch (e, stacktrace) {
      var errorMessage = e.toString();
      log(errorMessage, stackTrace: stacktrace);
      if (mounted) {
        Dialogs.hideLoadingDialog(context);
        SnackBars.showSnackBar(
            context, "Error during send transaction: $errorMessage");
      }
    } finally {
      Wakelock.disable();
    }
  }
}
