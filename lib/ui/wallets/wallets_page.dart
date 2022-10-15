import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_wallet/model/wallet.dart';
import 'package:mobile_wallet/service/authentication_service.dart';
import 'package:mobile_wallet/service/service_locator.dart';
import 'package:mobile_wallet/service/wallet_service.dart';
import 'package:mobile_wallet/ui/addwallet/add_wallet_page.dart';
import 'package:mobile_wallet/ui/addwallet/backup_wallet_page.dart';
import 'package:mobile_wallet/ui/component/dialogs.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/component/snack_bars.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';

class WalletsPage extends StatefulWidget {
  const WalletsPage({Key? key}) : super(key: key);

  @override
  State<WalletsPage> createState() => _WalletsPageState();
}

class _WalletsPageState extends State<WalletsPage> {
  List<Wallet>? _wallets;

  final List<TextEditingController> _controllers = <TextEditingController>[];

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.max, children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(AppLocalizations.of(context)!.wallets,
              style: const TextStyle(
                color: CustomColors.qrlLightBlueColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
        ),
      ),
      Expanded(
        child: _wallets == null
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CircularProgressIndicator(),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(AppLocalizations.of(context)!.loadingWallets),
                    ],
                  ),
                ),
              )
            : ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: _wallets != null ? _wallets?.length : 0,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  TextEditingController controller = TextEditingController();
                  controller.value =
                      TextEditingValue(text: "${_wallets?[index].name}");
                  _controllers.add(controller);
                  return Padding(
                    padding: const EdgeInsets.only(left: 32, right: 16, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IntrinsicWidth(
                                child: TextField(
                                  onChanged: (value) {
                                    if (value.isNotEmpty) {
                                      _updateWalletName(index, value);
                                    } else {
                                      String name = "wallet-${index + 1}";
                                      _updateWalletName(index, name);
                                      controller.value =
                                          TextEditingValue(text: name);
                                    }
                                  },
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  minLines: 1,
                                  maxLines: 2,
                                  controller: controller,
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.only(top: -5),
                                      border: InputBorder.none,
                                      suffix: Icon(
                                        Icons.edit,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                      isCollapsed: true),
                                ),
                              ),
                              Text(
                                "Q${_wallets?[index].address}",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey[500],
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove_red_eye),
                          tooltip: AppLocalizations.of(context)!.showKeys,
                          color: CustomColors.qrlYellowColor,
                          onPressed: () {
                            _onPressedShowMnemonic(index);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete_outline_sharp),
                          tooltip: AppLocalizations.of(context)!.delete,
                          color: CustomColors.qrlYellowColor,
                          onPressed: () {
                            _onPressedDelete(index);
                          },
                        ),
                      ],
                    ),
                  );
                }),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24, top: 16),
          child: SizedBox(
            width: 256,
            child: QrlButton(
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddWalletPage()),
              ),
              text: AppLocalizations.of(context)!.addWallet,
              baseColor: CustomColors.qrlLightBlueColor,
            ),
          ),
        ),
      ),
    ]);
  }

  _init() async {
    WalletService walletService = getIt<WalletService>();
    List<Wallet> wallets = await walletService.getWallets();
    if (wallets.isEmpty) {
      if (mounted) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const AddWalletPage()),
            (route) => false);
      }
    }
    if (mounted) {
      setState(() {
        _wallets = wallets;
      });
    }
  }

  void _onPressedDelete(int index) async {
    Dialogs.showConfirmDialog(
        context, AppLocalizations.of(context)!.confirmRemoveWallet, () async {
      if (mounted) {
        Dialogs.showLoadingDialog(
            context, AppLocalizations.of(context)!.deletingWallet);
      }
      WalletService walletService = getIt<WalletService>();
      await walletService.deleteWallet(index + 1);
      if (mounted) {
        _init();
        Dialogs.hideLoadingDialog(context);
      }
    });
  }

  void _onPressedShowMnemonic(int index) async {
    if (await getIt<AuthenticationService>().authenticate()) {
      WalletService walletService = getIt<WalletService>();
      Wallet wallet =
          await walletService.getWallet(index + 1, getHexSeed: true);
      if (mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BackupWalletPage(wallet)),
        );
      }
    } else {
      SnackBars.showSnackBar(
          context, AppLocalizations.of(context)!.authenticationFailed);
    }
  }

  _updateWalletName(int index, String value) async {
    WalletService walletService = getIt<WalletService>();
    await walletService.updateWalletName(index + 1, value);
  }

  @override
  void dispose() {
    for (TextEditingController controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }
}
