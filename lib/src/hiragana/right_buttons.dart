import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/button_letter.dart';
import 'dart:math' as math;

enum Button { k, s, t, n, h, m, y, r, w, g, z, d, b, p }

const notSelected = -1;

class RightButtons extends StatefulWidget {
  const RightButtons({super.key});

  @override
  State<RightButtons> createState() => _RightButtonsState();
}

class _RightButtonsState extends State<RightButtons> {
  int selectedIndex = notSelected;

  double _getLeft(int k) {
    // return (50 - 1 / ((k * k) - 0.5)).toDouble();
    return 330;
  }

  double _calcTop(int k) {
    if (k == notSelected) {
      return 50 - 35;
    }
    return 50 + (k * 35);
  }

  void onPressed(int k, int currentSelectedIndex) {
    if (k == currentSelectedIndex) {
      setState(() {
        selectedIndex = notSelected;
      });
      return;
    }
    setState(() {
      selectedIndex = k;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: _getLeft(notSelected),
          top: _calcTop(notSelected),
          child: ButtonChild(
            onPressed: () {
              onPressed(notSelected, selectedIndex);
            },
            selected: selectedIndex == notSelected,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(math.pi * 3 / 4),
              child: Icon(
                Icons.do_not_disturb_on_outlined,
                color: Colors.red[500],
              ),
            ),
          ),
        ),
        Positioned(
          left: _getLeft(0),
          top: _calcTop(0),
          child: ButtonLetter(
            text: 'k',
            onPressed: () {
              onPressed(0, selectedIndex);
            },
            selected: Button.k.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(1),
          top: _calcTop(1),
          child: ButtonLetter(
            text: 's',
            onPressed: () {
              onPressed(1, selectedIndex);
            },
            selected: Button.s.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(2),
          top: _calcTop(2),
          child: ButtonLetter(
            text: 't',
            onPressed: () {
              onPressed(2, selectedIndex);
            },
            selected: Button.t.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(3),
          top: _calcTop(3),
          child: ButtonLetter(
            text: 'n',
            onPressed: () {
              onPressed(3, selectedIndex);
            },
            selected: Button.n.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(4),
          top: _calcTop(4),
          child: ButtonLetter(
            text: 'h',
            onPressed: () {
              onPressed(4, selectedIndex);
            },
            selected: Button.h.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(Button.m.index),
          top: _calcTop(Button.m.index),
          child: ButtonLetter(
            text: Button.m.name,
            onPressed: () {
              onPressed(Button.m.index, selectedIndex);
            },
            selected: Button.m.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(Button.y.index),
          top: _calcTop(Button.y.index),
          child: ButtonLetter(
            text: Button.y.name,
            onPressed: () {
              onPressed(Button.y.index, selectedIndex);
            },
            selected: Button.y.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(Button.r.index),
          top: _calcTop(Button.r.index),
          child: ButtonLetter(
            text: Button.r.name,
            onPressed: () {
              onPressed(Button.r.index, selectedIndex);
            },
            selected: Button.r.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(Button.w.index),
          top: _calcTop(Button.w.index),
          child: ButtonLetter(
            text: Button.w.name,
            onPressed: () {
              onPressed(Button.w.index, selectedIndex);
            },
            selected: Button.w.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(Button.g.index),
          top: _calcTop(Button.g.index),
          child: ButtonLetter(
            text: Button.g.name,
            onPressed: () {
              onPressed(Button.g.index, selectedIndex);
            },
            selected: Button.g.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(Button.z.index),
          top: _calcTop(Button.z.index),
          child: ButtonLetter(
            text: Button.z.name,
            onPressed: () {
              onPressed(Button.z.index, selectedIndex);
            },
            selected: Button.z.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(Button.d.index),
          top: _calcTop(Button.d.index),
          child: ButtonLetter(
            text: Button.d.name,
            onPressed: () {
              onPressed(Button.d.index, selectedIndex);
            },
            selected: Button.d.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(Button.b.index),
          top: _calcTop(Button.b.index),
          child: ButtonLetter(
            text: Button.b.name,
            onPressed: () {
              onPressed(Button.b.index, selectedIndex);
            },
            selected: Button.b.index == selectedIndex,
          ),
        ),
        Positioned(
          left: _getLeft(Button.p.index),
          top: _calcTop(Button.p.index),
          child: ButtonLetter(
            text: Button.p.name,
            onPressed: () {
              onPressed(Button.p.index, selectedIndex);
            },
            selected: Button.p.index == selectedIndex,
          ),
        ),
      ],
    );
  }
}
