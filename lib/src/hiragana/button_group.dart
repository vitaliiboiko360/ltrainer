import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/button_letter.dart';

class ButtonGroup extends StatefulWidget {
  const ButtonGroup({super.key});

  @override
  State<ButtonGroup> createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  int selectedIndex = -1;

  double _getLeft(int k) {
    return 0;
  }

  double _calcTop(int k) {
    return 100 + (k * 30);
  }

  void onPressed(int k) {
    setState(() {
      selectedIndex = k;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 100.0,
          top: _calcTop(0),
          child: ButtonLetter(
            text: 'a',
            onPressed: () {
              onPressed(0);
            },
            selected: 0 == selectedIndex,
          ),
        ),
        Positioned(
          left: 90,
          top: _calcTop(1),
          child: ButtonLetter(
            text: 'u',
            onPressed: () {
              onPressed(1);
            },
            selected: 1 == selectedIndex,
          ),
        ),
        Positioned(
          left: 85,
          top: _calcTop(2),
          child: TextButton(onPressed: () {}, child: const Text('i')),
        ),
        Positioned(
          left: 80,
          top: _calcTop(3),
          child: TextButton(onPressed: () {}, child: const Text('e')),
        ),
        Positioned(
          left: 75,
          top: _calcTop(4),
          child: TextButton(onPressed: () {}, child: const Text('o')),
        ),
      ],
    );
  }
}
