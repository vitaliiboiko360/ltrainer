import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/hiragana_table/hiragana_letter.dart';

class TableLine extends StatefulWidget {
  const TableLine({super.key, required this.charArray});
  final List<String> charArray;
  @override
  State<TableLine> createState() => _TableLineState();
}

class _TableLineState extends State<TableLine> {
  List<Widget> _getLineWidgets() {
    List<Widget> lineWidgets = [];
    widget.charArray.forEach((char) {
      lineWidgets.add(HiraganaLetter(letter: char));
    });

    return lineWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Row(spacing: 4, children: _getLineWidgets());
  }
}
