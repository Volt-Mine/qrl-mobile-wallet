import 'package:flutter/material.dart';

class QrlAppBar extends AppBar {
  QrlAppBar({super.key})
      : super(
          elevation: 0,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/qrl-logo.png',
                fit: BoxFit.contain,
                height: 72,
              )
            ],
          ),
        );
}
