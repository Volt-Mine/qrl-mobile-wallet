import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_wallet/model/wallet.dart';
import 'package:mobile_wallet/service/service_locator.dart';
import 'package:mobile_wallet/service/wallet_service.dart';
import 'package:mobile_wallet/ui/addwallet/backup_wallet_page.dart';
import 'package:mobile_wallet/ui/component/dialogs.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/component/qrl_textfield.dart';
import 'package:mobile_wallet/ui/component/scan_qr_page.dart';
import 'package:mobile_wallet/ui/component/snack_bars.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:wakelock/wakelock.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OpenWalletHexSeedPage extends StatefulWidget {
  const OpenWalletHexSeedPage({Key? key}) : super(key: key);

  @override
  State<OpenWalletHexSeedPage> createState() => _OpenWalletHexSeedPageState();
}

class _OpenWalletHexSeedPageState extends State<OpenWalletHexSeedPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _hexSeedController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
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
                        child: Text(AppLocalizations.of(context)!.walletSetup,
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
                      child:
                          Text(AppLocalizations.of(context)!.openWithHexseed),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 32, right: 32),
                      child: QrlTextField(
                        _nameController,
                        (value) => setState(() {}),
                        text: AppLocalizations.of(context)!.walletName,
                        autoFocus: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 32, right: 32),
                      child: QrlTextField(
                        _hexSeedController,
                        (value) => setState(() {}),
                        text: AppLocalizations.of(context)!.hexseed,
                        focusNode: _focusNode,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.qr_code),
                          tooltip: AppLocalizations.of(context)!.scanHexseed,
                          color: CustomColors.qrlYellowColor,
                          onPressed: () {
                            if (!_focusNode.hasFocus) {
                              _focusNode.requestFocus();
                            }
                            _scanHexSeed();
                          },
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
                              _nameController.text.isNotEmpty &&
                                      _hexSeedController.text.isNotEmpty
                                  ? () => _onPressedConfirm()
                                  : null,
                              text: AppLocalizations.of(context)!.confirm,
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

  void _scanHexSeed() async {
    String? scannedHexSeed = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ScanQrPage()),
    );
    if (mounted && scannedHexSeed != null && scannedHexSeed.isNotEmpty) {
      setState(() {
        _hexSeedController.value = TextEditingValue(text: scannedHexSeed);
      });
    }
  }

  void _onPressedConfirm() async {
    try {
      Wakelock.enable();
      Dialogs.showLoadingDialog(context, AppLocalizations.of(context)!.creatingWallet);
      WalletService walletService = getIt<WalletService>();
      Wallet wallet = await walletService.createWallet(_nameController.text,
          hexSeed: _hexSeedController.text);
      if (mounted) {
        Dialogs.hideLoadingDialog(context);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => BackupWalletPage(wallet)),
            (route) => false);
      }
    } on Exception catch (e, stacktrace) {
      var errorMessage = e.toString();
      log(errorMessage, stackTrace: stacktrace);
      if (mounted) {
        Dialogs.hideLoadingDialog(context);
        SnackBars.showSnackBar(
            context, "${AppLocalizations.of(context)!.errorWalletCreation} $errorMessage");
      }
    } finally {
      Wakelock.disable();
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _hexSeedController.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
