import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/button_letter.dart';

enum LeftButton { a, u, i, e, o }

class LeftButtons extends StatefulWidget {
  const LeftButtons({super.key, required this.setCharacterToShow});

  final Function(int) setCharacterToShow;

  @override
  State<LeftButtons> createState() => _LeftButtonsState();
}

class _LeftButtonsState extends State<LeftButtons> {
  int selectedIndex = -1;

  double _getLeft(int k) {
    // return (50 - 1 / ((k * k) - 0.5)).toDouble();
    return 10;
  }

  double _calcTop(int k) {
    return 100 + (k * 35);
  }

  void onPressed(int k, int currentSelectedIndex) {
    if (k == currentSelectedIndex) {
      setState(() {
        selectedIndex = -1;
        widget.setCharacterToShow(-1);
      });
      return;
    }
    setState(() {
      selectedIndex = k;
      widget.setCharacterToShow(k);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: _getLeft(0),
          top: _calcTop(0),
          child: ButtonLetter(
            text: 'a',
            onPressed: () {
              onPressed(0, selectedIndex);
            },
            selected: LeftButton.a.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(1),
          top: _calcTop(1),
          child: ButtonLetter(
            text: 'u',
            onPressed: () {
              onPressed(1, selectedIndex);
            },
            selected: LeftButton.u.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(2),
          top: _calcTop(2),
          child: ButtonLetter(
            text: 'i',
            onPressed: () {
              onPressed(2, selectedIndex);
            },
            selected: LeftButton.i.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(3),
          top: _calcTop(3),
          child: ButtonLetter(
            text: 'e',
            onPressed: () {
              onPressed(3, selectedIndex);
            },
            selected: LeftButton.e.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(4),
          top: _calcTop(4),
          child: ButtonLetter(
            text: 'o',
            onPressed: () {
              onPressed(4, selectedIndex);
            },
            selected: LeftButton.o.index == selectedIndex,
          ),
        ),
      ],
    );
  }
}
