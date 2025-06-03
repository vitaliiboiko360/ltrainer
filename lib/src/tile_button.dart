import 'package:flutter/material.dart';

class TileButton extends StatelessWidget {
  TileButton({super.key, required this.onPressed});

  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: WidgetStateProperty.resolveWith<Size?>((
          Set<WidgetState> states,
        ) {
          return Size(320, 320);
        }),
      ),
      child: const Text('Hiragana'),
    );
  }
}
