import 'package:flutter/material.dart';
import 'package:ltrainer/src/kanji/get_kanji.dart';
import 'package:ltrainer/src/kanji/kanji_block.dart';

class KanjiDisplay extends StatefulWidget {
  const KanjiDisplay({super.key, required this.kanji});

  final List<KanjiInfo> kanji;

  @override
  State<KanjiDisplay> createState() => _KanjiDisplayState();
}

class _KanjiDisplayState extends State<KanjiDisplay> {
  List<Widget> _buildBlock() {
    List<Widget> kanjiWidgets = [];
    List<KanjiInfo> kanjiInfos = [];
    for (var i = 0; i < widget.kanji.length; i++) {
      kanjiInfos.add(widget.kanji[i]);
      if (kanjiInfos.length == 7 || i == widget.kanji.length - 1) {
        kanjiWidgets.add(KanjiBlock(kanjiList: kanjiInfos));
        kanjiInfos = [];
      }
    }
    return kanjiWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildBlock(),
    );
  }
}
