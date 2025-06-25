import 'package:flutter/material.dart';
import 'package:ltrainer/src/kanji/get_kanji.dart';
import 'package:ltrainer/src/kanji/kanji_char.dart';

class KanjiBlock extends StatefulWidget {
  const KanjiBlock({super.key, required this.kanjiList});

  final List<KanjiInfo> kanjiList;

  @override
  State<KanjiBlock> createState() => _KanjiBlockState();
}

class _KanjiBlockState extends State<KanjiBlock> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: [
            KanjiChar(word: widget.kanjiList[0].kanji),
            KanjiChar(word: widget.kanjiList[1].kanji),
          ],
        ),
        Column(
          children: [
            KanjiChar(word: widget.kanjiList[2].kanji),
            KanjiChar(word: widget.kanjiList[3].kanji),
            KanjiChar(word: widget.kanjiList[4].kanji),
          ],
        ),
        Column(
          children: [
            KanjiChar(word: widget.kanjiList[5].kanji),
            KanjiChar(word: widget.kanjiList[6].kanji),
          ],
        ),
      ],
    );
  }
}
