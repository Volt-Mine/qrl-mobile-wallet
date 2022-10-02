import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_wallet/model/extended_wallet_data.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:mobile_wallet/ui/util/string_util.dart';
import 'package:mobile_wallet/ui/util/util.dart';

class TransactionDetailPage extends StatelessWidget {
  final TransactionData _transactionData;

  const TransactionDetailPage(this._transactionData, {Key? key})
      : super(key: key);

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
                child: Text("Transaction details",
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
              child: Text("Transfer"),
            )),
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 36, left: 24, right: 24),
                child: Text(
                  "${StringUtil.formatAmount(_transactionData.amount)} QRL",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: CustomColors.qrlLightBlueColor,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text("From address",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CustomColors.qrlYellowColor,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 36),
              child: SelectableText(
                "Q${_transactionData.senderAddress}",
                textAlign: TextAlign.center,
              ),
            )),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text("To address",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CustomColors.qrlYellowColor,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 36),
              child: SelectableText(
                "Q${_transactionData.receiverAddress}",
                textAlign: TextAlign.center,
              ),
            )),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text("Transaction hash",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CustomColors.qrlYellowColor,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 48),
              child: SelectableText(
                _transactionData.hash,
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
                      () async {
                        Uri url = Uri.parse(
                            "https://explorer.theqrl.org/tx/${_transactionData.hash}");
                        await Util.launchInBrowser(url);
                      },
                      text: "OPEN IN EXPLORER",
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
