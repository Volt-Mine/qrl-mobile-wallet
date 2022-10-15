import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_wallet/model/wallet.dart';
import 'package:mobile_wallet/service/service_locator.dart';
import 'package:mobile_wallet/service/wallet_service.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/component/snack_bars.dart';
import 'package:mobile_wallet/ui/main_page.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BackupWalletPage extends StatefulWidget {
  final Wallet wallet;

  const BackupWalletPage(this.wallet, {Key? key}) : super(key: key);

  @override
  State<BackupWalletPage> createState() => _BackupWalletPageState();
}

class _BackupWalletPageState extends State<BackupWalletPage> {
  String _hexSeed = "";
  String _mnemonic = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QrlAppBar(),
      body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(AppLocalizations.of(context)!.recoverySeeds,
                    style: const TextStyle(
                      color: CustomColors.qrlLightBlueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 32),
              child: SelectableText(
                "Q${widget.wallet.address}",
                textAlign: TextAlign.center,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: Text(AppLocalizations.of(context)!.mnemonic,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: CustomColors.qrlYellowColor,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
                  SizedBox(
                    width: 32,
                    child: IconButton(
                      icon: const Icon(
                        Icons.copy_all,
                      ),
                      tooltip: AppLocalizations.of(context)!.copy,
                      color: CustomColors.qrlYellowColor,
                      onPressed: () {
                        _copy(_mnemonic);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 32),
              child: _mnemonic.isNotEmpty
                  ? SelectableText(
                      _mnemonic,
                      textAlign: TextAlign.center,
                    )
                  : Text(
                      AppLocalizations.of(context)!.loadingMnemonic,
                      textAlign: TextAlign.center,
                    ),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: Text(AppLocalizations.of(context)!.hexseed,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: CustomColors.qrlYellowColor,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
                  SizedBox(
                    width: 32,
                    child: IconButton(
                      icon: const Icon(
                        Icons.copy_all,
                      ),
                      tooltip: AppLocalizations.of(context)!.copy,
                      color: CustomColors.qrlYellowColor,
                      onPressed: () {
                        _copy(_hexSeed);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 48),
              child: SelectableText(
                _hexSeed,
                textAlign: TextAlign.center,
              ),
            )),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
              child: Text(AppLocalizations.of(context)!.warning,
                  style: const TextStyle(
                    color: CustomColors.qrlLightBlueColor,
                    fontWeight: FontWeight.bold,
                  )),
            )),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 32),
              child: Text(
                AppLocalizations.of(context)!.recoveryWarning,
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
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()),
                            (route) => false);
                      },
                      text: AppLocalizations.of(context)!.done,
                      baseColor: CustomColors.qrlLightBlueColor,
                    ),
                  ),
                ),
              ),
            )
          ]),
    );
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    WalletService walletService = getIt<WalletService>();
    Wallet wallet = widget.wallet;
    if (mounted) {
      setState(() {
        _hexSeed = wallet.hexSeed;
      });
    }
    String mnemonic = await walletService.getMnemonic(wallet.hexSeed);
    if (mounted) {
      setState(() {
        _mnemonic = mnemonic;
      });
    }
  }

  _copy(String copyValue) async {
    Clipboard.setData(ClipboardData(text: copyValue)).then((value) {
      SnackBars.showSnackBar(
          context, AppLocalizations.of(context)!.copiedToClipboard);
    });
  }
}
