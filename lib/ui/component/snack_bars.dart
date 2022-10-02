import 'package:flutter/material.dart';

class SnackBars {
  static void showSnackBar(BuildContext context, String message,
      {Duration? duration}) {
    ScaffoldMessengerState scaffoldMessengerState =
        ScaffoldMessenger.of(context);
    scaffoldMessengerState.clearSnackBars();
    scaffoldMessengerState.showSnackBar(SnackBar(
      content: Text(message),
      duration: duration ?? const Duration(milliseconds: 4000),
    ));
  }
}
