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
import 'package:mobile_wallet/ui/component/snack_bars.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:wakelock/wakelock.dart';

Map<int, String> _treeHeightMap = <int, String>{
  8: "Height 8: Signatures 256",
  10: "Height 10: Signatures 1,024",
  12: "Height 12: Signatures 4,096",
  14: "Height 14: Signatures 16,384",
  16: "Height 16: Signatures 262,144",
};

Map<int, String> _hashFunctionMap = <int, String>{
  1: "SHAKE_128",
  2: "SHAKE_256",
  3: "SHA2_256",
};

class CreateWalletPage extends StatefulWidget {
  const CreateWalletPage({Key? key}) : super(key: key);

  @override
  State<CreateWalletPage> createState() => _CreateWalletPageState();
}

class _CreateWalletPageState extends State<CreateWalletPage> {
  int _selectedTreeHeight = 10;
  int _selectedHashFunction = 1;
  final TextEditingController _nameController = TextEditingController();

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
                    child: Text("Create wallet"),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 32, right: 32),
                    child: QrlTextField(
                      _nameController,
                      (value) => setState(() {}),
                      text: "Wallet name",
                      autoFocus: true,
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 512,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 32, right: 32),
                        child: InputDecorator(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    width: 1,
                                    color: CustomColors.qrlYellowColor)),
                            contentPadding: const EdgeInsets.only(
                                left: 12, right: 12, top: 4, bottom: 4),
                            labelText: 'Tree height',
                            labelStyle: const TextStyle(
                                color: CustomColors.qrlYellowColor),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: const OutlineInputBorder(),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              isExpanded: true,
                              value: _selectedTreeHeight,
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: CustomColors.qrlYellowColor,
                              ),
                              underline: null,
                              onChanged: (int? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  _selectedTreeHeight = value!;
                                });
                              },
                              items: _treeHeightMap.keys
                                  .map<DropdownMenuItem<int>>((int value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(_treeHeightMap[value] ?? ""),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 512,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 32, right: 32),
                        child: InputDecorator(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    width: 1,
                                    color: CustomColors.qrlYellowColor)),
                            contentPadding: const EdgeInsets.only(
                                left: 12, right: 12, top: 4, bottom: 4),
                            labelText: 'Hash function',
                            labelStyle: const TextStyle(
                                color: CustomColors.qrlYellowColor),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: const OutlineInputBorder(),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              isExpanded: true,
                              value: _selectedHashFunction,
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: CustomColors.qrlYellowColor,
                              ),
                              underline: null,
                              onChanged: (int? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  _selectedHashFunction = value!;
                                });
                              },
                              items: _hashFunctionMap.keys
                                  .map<DropdownMenuItem<int>>((int value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(_hashFunctionMap[value] ?? ""),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
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
                            _nameController.text.isNotEmpty
                                ? () => _onPressedConfirm()
                                : null,
                            text: "CONFIRM",
                            baseColor: CustomColors.qrlLightBlueColor,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )),
            ),
          ),
        ));
  }

  void _onPressedConfirm() async {
    Dialogs.showConfirmDialog(context,
        "Once you run out of signatures you will need to create a new wallet. \nBe aware that wallet creation and transaction time increases with tree height. \nContinue wallet creation with current setup?",
        () async {
      try {
        Wakelock.enable();
        Dialogs.showLoadingDialog(context, "Creating wallet...");
        WalletService walletService = getIt<WalletService>();
        Wallet wallet = await walletService.createWallet(_nameController.text,
            treeHeight: _selectedTreeHeight,
            hashFunction: _selectedHashFunction);
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
              context, "Error during creation of wallet: $errorMessage");
        }
      } finally {
        Wakelock.disable();
      }
    }, header: "Important!");
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
