import 'package:flutter/material.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';

class Dialogs {
  static void showLoadingDialog(BuildContext context, String message) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return Dialog(
            backgroundColor: CustomColors.qrlDarkBlueColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(message),
                ],
              ),
            ),
          );
        });
  }

  static void hideLoadingDialog(BuildContext context) {
    Navigator.of(context).pop();
  }

  static void showConfirmDialog(
      BuildContext context, String message, VoidCallback onConfirm,
      {String? header}) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            backgroundColor: CustomColors.qrlDarkBlueColor,
            title: Text(
              header ?? "Confirm",
              style: const TextStyle(
                color: CustomColors.qrlLightBlueColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            content: Text(message, textAlign: TextAlign.center),
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              SizedBox(
                width: 72,
                child: QrlButton(
                  () {
                    Navigator.of(context).pop();
                    onConfirm.call();
                  },
                  text: "Yes",
                  baseColor: CustomColors.qrlLightBlueColor,
                ),
              ),
              SizedBox(
                width: 72,
                child: QrlButton(
                  () {
                    Navigator.of(context).pop();
                  },
                  text: "No",
                  baseColor: CustomColors.qrlLightBlueColor,
                ),
              )
            ],
          );
        });
  }
}
