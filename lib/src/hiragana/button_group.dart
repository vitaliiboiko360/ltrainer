import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/display_letter.dart';
import 'package:ltrainer/src/hiragana/left_buttons.dart';
import 'package:ltrainer/src/hiragana/right_buttons.dart';
import 'package:video_player/video_player.dart';

const notSelected = -1;

const defaultVideoFilename = 'a.mp4';

String getVideoFilename(character) {
  return '$character.mp4';
}

var leftCharacters = {
  LeftButton.a.index: getVideoFilename(LeftButton.a.name),
  LeftButton.u.index: getVideoFilename(LeftButton.u.name),
  LeftButton.i.index: getVideoFilename(LeftButton.i.name),
  LeftButton.e.index: getVideoFilename(LeftButton.e.name),
  LeftButton.o.index: getVideoFilename(LeftButton.o.name),
};

class ButtonGroup extends StatefulWidget {
  const ButtonGroup({super.key});

  @override
  State<ButtonGroup> createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  int characterToShow = notSelected;
  String videoFilename = 'a.mp4';

  setCharacterToShow(int k) {
    setState(() {
      characterToShow = k;
      if (k != notSelected) {
        videoFilename = leftCharacters[k] ?? defaultVideoFilename;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        LeftButtons(setCharacterToShow: setCharacterToShow),
        RightButtons(),
        DisplayLetter(
          characterToShow: characterToShow,
          videoFilename: videoFilename,
        ),
      ],
    );
  }
}
