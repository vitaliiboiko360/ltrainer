import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/hiragana_table/hiragana_letter.dart';

final class Hiragana {
  String letter;
  String sound;
  Hiragana(this.letter, this.sound);
}

List<Hiragana> makeHiraganaArray(List<String> inputArray) {
  List<Hiragana> hiraganaArray = [];
  for (var i = 0; i < inputArray.length; i += 2) {
    hiraganaArray.add(Hiragana(inputArray[i], inputArray[i + 1]));
  }
  return hiraganaArray;
}

class TableLine extends StatefulWidget {
  const TableLine({super.key, required this.hiraganaArray});
  final List<Hiragana> hiraganaArray;
  @override
  State<TableLine> createState() => _TableLineState();
}

class _TableLineState extends State<TableLine> {
  List<Widget> _getLineWidgets() {
    List<Widget> lineWidgets = [];
    widget.hiraganaArray.forEach((hiraganaChar) {
      lineWidgets.add(
        HiraganaLetter(letter: hiraganaChar.letter, sound: hiraganaChar.sound),
      );
    });

    return lineWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Row(spacing: 4, children: _getLineWidgets());
  }
}
