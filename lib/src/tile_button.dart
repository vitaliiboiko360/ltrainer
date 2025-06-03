import 'package:flutter/material.dart';

var buttonStyle = ButtonStyle(
  fixedSize: WidgetStateProperty.resolveWith<Size?>((Set<WidgetState> states) {
    return Size(320, 320);
  }),
);

class TileButton extends TextButton {
  const TileButton({
    super.key,
    super.onPressed,
    super.child = const Text('Hiragana'),
  });
}
