import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/display_letter.dart';
import 'package:ltrainer/src/hiragana/left_buttons.dart';
import 'package:ltrainer/src/hiragana/right_buttons.dart';

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({super.key});

  double _getLeft(int k) {
    return 0;
  }

  double _calcTop(int k) {
    return 100 + (k * 30);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[LeftButtons(), RightButtons(), DisplayLetter()],
    );
  }
}
