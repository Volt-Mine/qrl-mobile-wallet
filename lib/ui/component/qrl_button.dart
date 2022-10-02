import 'package:flutter/material.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';

class QrlButton extends OutlinedButton {
  final VoidCallback? _onPressed;
  static const Color _defaultColor = CustomColors.qrlYellowColor;

  QrlButton(this._onPressed, {super.key, String? text, Color? baseColor})
      : super(
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: baseColor ?? _defaultColor, width: 1),
              foregroundColor: baseColor ?? _defaultColor,
              disabledForegroundColor: baseColor?.withOpacity(0.5) ??
                  _defaultColor.withOpacity(0.5)),
          onPressed: _onPressed,
          child: Text(text ?? ""),
        );
}
