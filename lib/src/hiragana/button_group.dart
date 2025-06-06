import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/button_letter.dart';

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
      children: <Widget>[
        // TextButton(
        //   onPressed: () {},
        //   style: TextButton.styleFrom(fixedSize: Size(10, 10)),
        //   child: const Text('a'),
        // ),
        Positioned(
          left: 100.0,
          top: _calcTop(0),
          child: ButtonLetter(text: 'a', onPressed: () {}),
        ),
        Positioned(
          left: 90,
          top: _calcTop(1),
          child: TextButton(onPressed: () {}, child: const Text('i')),
        ),
        Positioned(
          left: 85,
          top: _calcTop(2),
          child: TextButton(onPressed: () {}, child: const Text('u')),
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
