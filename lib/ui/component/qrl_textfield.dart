import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';

class QrlTextField extends TextField {
  final TextEditingController _controller;
  final ValueChanged<String> _onChanged;
  static const Color _defaultColor = CustomColors.qrlYellowColor;

  QrlTextField(this._controller, this._onChanged,
      {super.key,
      String? text,
      bool? autoFocus,
      Color? baseColor,
      FocusNode? focusNode,
      TextInputType? keyboardType,
      int? minLines,
      int? maxLines,
      Widget? suffixIcon,
      List<TextInputFormatter>? inputFormatters})
      : super(
            controller: _controller,
            onChanged: _onChanged,
            autofocus: autoFocus ?? false,
            focusNode: focusNode,
            keyboardType: keyboardType,
            minLines: minLines ?? 1,
            maxLines: maxLines ?? 1,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: baseColor ?? _defaultColor)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: baseColor ?? _defaultColor)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: baseColor ?? _defaultColor, width: 2)),
              labelText: text ?? "",
              labelStyle: TextStyle(color: baseColor ?? _defaultColor),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: suffixIcon,
            ),
            cursorColor: baseColor ?? _defaultColor);
}
