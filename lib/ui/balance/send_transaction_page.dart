import 'dart:developer';

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_wallet/model/extended_wallet_data.dart';
import 'package:mobile_wallet/model/wallet.dart';
import 'package:mobile_wallet/service/service_locator.dart';
import 'package:mobile_wallet/service/settings_service.dart';
import 'package:mobile_wallet/service/wallet_service.dart';
import 'package:mobile_wallet/ui/balance/confirm_transaction_page.dart';
import 'package:mobile_wallet/ui/component/dialogs.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/component/qrl_textfield.dart';
import 'package:mobile_wallet/ui/component/scan_qr_page.dart';
import 'package:mobile_wallet/ui/component/snack_bars.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:mobile_wallet/ui/util/string_util.dart';
import 'package:wakelock/wakelock.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SendTransactionPage extends StatefulWidget {
  final Wallet _wallet;
  final ExtendedWalletData _extendedWalletData;

  const SendTransactionPage(this._wallet, this._extendedWalletData, {Key? key})
      : super(key: key);

  @override
  State<SendTransactionPage> createState() => _SendTransactionPageState();
}

class _SendTransactionPageState extends State<SendTransactionPage> {
  final TextEditingController _receiverWalletAddressController =
      TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _feeController = TextEditingController();
  int _fee = 1000000;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _getFeeSetting();
  }

  Future<void> _getFeeSetting() async {
    SettingsService settingsService = getIt<SettingsService>();
    int fee = await settingsService.getFeeSetting();
    if (mounted) {
      setState(() {
        _fee = fee;
        _feeController.value =
            TextEditingValue(text: StringUtil.formatAmount(_fee));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int currentOtsIndex = widget._extendedWalletData.otsIndex;
    int totalOtsKeys = _getOtsKeysForHeight(widget._wallet.height);
    int otsKeysLeft = totalOtsKeys - currentOtsIndex;
    return Scaffold(
      appBar: QrlAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(AppLocalizations.of(context)!.send,
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
                      child: Text(AppLocalizations.of(context)!.sendAmount),
                    )),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(
                          left: 32, right: 32, bottom: 32),
                      child: Text(
                        "Q${widget._wallet.address}",
                        textAlign: TextAlign.center,
                      ),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 32, right: 32),
                      child: QrlTextField(
                        _receiverWalletAddressController,
                        (value) => setState(() {}),
                        text: AppLocalizations.of(context)!.walletAddress,
                        focusNode: _focusNode,
                        autoFocus: true,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.qr_code),
                          tooltip: AppLocalizations.of(context)!.scanAddress,
                          color: CustomColors.qrlYellowColor,
                          onPressed: () {
                            if (!_focusNode.hasFocus) {
                              _focusNode.requestFocus();
                            }
                            _scanAddress();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: 32, right: 32),
                      child: QrlTextField(
                        _amountController,
                        (value) => setState(() {}),
                        text: AppLocalizations.of(context)!.amount,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        inputFormatters: <TextInputFormatter>[
                          getNumberFormatter(),
                          getCommaDotFormatter(),
                          getNumberDotFormatter(),
                          getMaxValueFormatter(),
                          TextInputFormatter.withFunction(
                            (oldValue, newValue) {
                              if (newValue.text.isNotEmpty) {
                                BigInt newValueBigInt =
                                    (Decimal.parse(newValue.text) *
                                            Decimal.fromInt(1000000000))
                                        .toBigInt();
                                if (newValueBigInt == BigInt.zero) {
                                  return newValue.copyWith(
                                    text: StringUtil.formatAmount(1),
                                  );
                                }
                                BigInt availableBalance = BigInt.from(
                                        widget._extendedWalletData.balance) -
                                    (Decimal.parse(_feeController.text) *
                                            Decimal.fromInt(1000000000))
                                        .toBigInt();
                                if (newValueBigInt > availableBalance) {
                                  return newValue.copyWith(
                                    text: StringUtil.formatAmount(
                                        availableBalance > BigInt.zero
                                            ? availableBalance.toInt()
                                            : 0),
                                  );
                                }
                              }
                              return newValue;
                            },
                          ),
                        ],
                        minLines: 1,
                        maxLines: 5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 32, left: 32, right: 32, top: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.fee,
                                ),
                                IntrinsicWidth(
                                  child: TextField(
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                            decimal: true),
                                    inputFormatters: <TextInputFormatter>[
                                      getNumberFormatter(),
                                      getCommaDotFormatter(),
                                      getNumberDotFormatter(),
                                      getMaxValueFormatter(),
                                      TextInputFormatter.withFunction(
                                        (oldValue, newValue) {
                                          if (newValue.text.isNotEmpty) {
                                            BigInt newValueBigInt =
                                                (Decimal.parse(newValue.text) *
                                                        Decimal.fromInt(
                                                            1000000000))
                                                    .toBigInt();
                                            if (newValueBigInt == BigInt.zero) {
                                              return newValue.copyWith(
                                                text:
                                                    StringUtil.formatAmount(1),
                                              );
                                            }
                                            BigInt availableBalance = BigInt
                                                    .from(widget
                                                        ._extendedWalletData
                                                        .balance) -
                                                (Decimal.parse(_amountController
                                                                .text.isNotEmpty
                                                            ? _amountController
                                                                .text
                                                            : "0") *
                                                        Decimal.fromInt(
                                                            1000000000))
                                                    .toBigInt();
                                            if (newValueBigInt >
                                                availableBalance) {
                                              return newValue.copyWith(
                                                text: StringUtil.formatAmount(
                                                    availableBalance >
                                                            BigInt.zero
                                                        ? availableBalance
                                                            .toInt()
                                                        : 1000000),
                                              );
                                            }
                                          }
                                          return newValue;
                                        },
                                      ),
                                    ],
                                    onChanged: (value) => _updateFee(value),
                                    style: const TextStyle(
                                        fontSize: 14,
                                        color: CustomColors.qrlLightBlueColor),
                                    minLines: 1,
                                    maxLines: 2,
                                    controller: _feeController,
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: const InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(top: -5),
                                        border: InputBorder.none,
                                        suffix: Icon(
                                          Icons.edit,
                                          size: 18,
                                          color:
                                              CustomColors.qrlLightBlueMaterial,
                                        ),
                                        isCollapsed: true),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(children: [
                            Text(AppLocalizations.of(context)!.otsKeyIndex),
                            Text(" $currentOtsIndex",
                                style: TextStyle(
                                    color: otsKeysLeft < 16
                                        ? Colors.redAccent
                                        : CustomColors.qrlLightBlueColor))
                          ]),
                        ],
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(AppLocalizations.of(context)!.balance),
                    )),
                    Center(
                        child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 24, left: 32, right: 32),
                            child: Text(
                                "${StringUtil.formatAmount(widget._extendedWalletData.balance)} QRL",
                                style: const TextStyle(
                                  color: CustomColors.qrlLightBlueColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                )))),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 36),
                          child: SizedBox(
                            width: 256,
                            child: QrlButton(
                              _receiverWalletAddressController
                                          .text.isNotEmpty &&
                                      _amountController.text.isNotEmpty &&
                                      Decimal.parse(_amountController.text) >
                                          Decimal.zero
                                  ? () => onPressedReview(context, otsKeysLeft)
                                  : null,
                              text: AppLocalizations.of(context)!.review,
                              baseColor: CustomColors.qrlLightBlueColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  FilteringTextInputFormatter getNumberFormatter() {
    return FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[,.]{0,1}[0-9]*'));
  }

  TextInputFormatter getCommaDotFormatter() {
    return TextInputFormatter.withFunction(
      (oldValue, newValue) => newValue.copyWith(
        text: newValue.text.replaceAll(',', '.'),
      ),
    );
  }

  FilteringTextInputFormatter getNumberDotFormatter() {
    return FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,9}'));
  }

  TextInputFormatter getMaxValueFormatter() {
    return TextInputFormatter.withFunction(
      (oldValue, newValue) {
        if (newValue.text.isNotEmpty) {
          if (!(Decimal.parse(newValue.text) * Decimal.fromInt(1000000000))
              .toBigInt()
              .isValidInt) {
            return newValue.copyWith(
              // max range 64bit integer result we can handle
              text: "9223372036.854775807",
            );
          }
        }
        return newValue;
      },
    );
  }

  void _updateFee(String value) async {
    int fee =
        (Decimal.parse(value) * Decimal.fromInt(1000000000)).toBigInt().toInt();
    SettingsService settingsService = getIt<SettingsService>();
    await settingsService.updateFeeSetting(fee);
    if (mounted) {
      setState(() {
        _fee = (Decimal.parse(value) * Decimal.fromInt(1000000000))
            .toBigInt()
            .toInt();
      });
    }
  }

  void onPressedReview(BuildContext context, int otsKeysLeft) async {
    try {
      if (otsKeysLeft < 1) {
        SnackBars.showSnackBar(context,
            "${AppLocalizations.of(context)!.noMoreOts1} ${StringUtil.formatAmount(widget._extendedWalletData.balance)} ${AppLocalizations.of(context)!.noMoreOts2}");
        return;
      }
      Wakelock.enable();
      Dialogs.showLoadingDialog(
          context, AppLocalizations.of(context)!.verifyingTransaction);
      if (await getIt<WalletService>()
          .isAddressValid(_receiverWalletAddressController.text)) {
        if (mounted) {
          Dialogs.hideLoadingDialog(context);
          goToReview() => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ConfirmTransactionPage(
                        widget._wallet,
                        _receiverWalletAddressController.text,
                        (Decimal.parse(_amountController.text) *
                                Decimal.fromInt(1000000000))
                            .toBigInt()
                            .toInt(),
                        _fee,
                        widget._extendedWalletData.otsIndex)),
              );
          if (otsKeysLeft < 6) {
            Dialogs.showConfirmDialog(context,
                "${AppLocalizations.of(context)!.otsKeysLeft1} $otsKeysLeft ${AppLocalizations.of(context)!.otsKeysLeft2}",
                header: AppLocalizations.of(context)!.warning, () {
              goToReview();
            });
          } else {
            goToReview();
          }
        }
      } else {
        if (mounted) {
          Dialogs.hideLoadingDialog(context);
          SnackBars.showSnackBar(
              context, AppLocalizations.of(context)!.addressNotValid);
        }
      }
    } on Exception catch (e, stacktrace) {
      var errorMessage = e.toString();
      log(errorMessage, stackTrace: stacktrace);
      if (mounted) {
        Dialogs.hideLoadingDialog(context);
        SnackBars.showSnackBar(context,
            "${AppLocalizations.of(context)!.errorSendTransaction} $errorMessage");
      }
    } finally {
      Wakelock.disable();
    }
  }

  void _scanAddress() async {
    String? scannedWalletAddress = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ScanQrPage()),
    );
    if (mounted &&
        scannedWalletAddress != null &&
        scannedWalletAddress.isNotEmpty) {
      setState(() {
        _receiverWalletAddressController.value =
            TextEditingValue(text: scannedWalletAddress);
      });
    }
  }

  int _getOtsKeysForHeight(int height) {
    switch (height) {
      case 8:
        return 256;
      case 10:
        return 1024;
      case 12:
        return 4096;
      case 14:
        return 16384;
      case 16:
        return 262144;
    }
    return 0;
  }

  @override
  void dispose() {
    _receiverWalletAddressController.dispose();
    _amountController.dispose();
    _feeController.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
