import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/display_letter.dart';
import 'package:ltrainer/src/hiragana/left_buttons.dart';
import 'package:ltrainer/src/hiragana/right_buttons.dart';

const notSelected = -1;

class ButtonGroup extends StatefulWidget {
  const ButtonGroup({super.key});

  State<ButtonGroup> createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  int characterToShow = notSelected;

  setCharacterToShow(int k) {
    setState(() {
      characterToShow = k;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        LeftButtons(setCharacterToShow: setCharacterToShow),
        RightButtons(),
        DisplayLetter(characterToShow: characterToShow),
      ],
    );
  }
}
