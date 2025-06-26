import 'package:flutter/material.dart';
import 'package:ltrainer/src/kanji/get_kanji.dart';
import 'package:ltrainer/src/kanji/kanji_char.dart';

class KanjiBlock extends StatefulWidget {
  const KanjiBlock({super.key, required this.kanjiList, this.isOdd = false});

  final List<KanjiInfo> kanjiList;
  final bool isOdd;

  @override
  State<KanjiBlock> createState() => _KanjiBlockState();
}

class _KanjiBlockState extends State<KanjiBlock> {
  List<Widget> _buildChars(kanjiList) {
    if (kanjiList.length == 7) {
      return [
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
      ];
    }
    if (kanjiList.length == 6) {
      return [
        Column(
          children: [
            KanjiChar(word: widget.kanjiList[0].kanji),
            KanjiChar(word: widget.kanjiList[1].kanji),
          ],
        ),
        Column(
          children: [
            KanjiChar(word: widget.kanjiList[2].kanji),
            SizedBox(height: 52),
            KanjiChar(word: widget.kanjiList[3].kanji),
          ],
        ),
        Column(
          children: [
            KanjiChar(word: widget.kanjiList[4].kanji),
            KanjiChar(word: widget.kanjiList[5].kanji),
          ],
        ),
      ];
    }

    if (kanjiList.length == 5) {
      return [
        Column(
          children: [
            KanjiChar(word: widget.kanjiList[0].kanji),
            KanjiChar(word: widget.kanjiList[1].kanji),
          ],
        ),
        Column(
          children: [
            KanjiChar(word: widget.kanjiList[2].kanji),
            SizedBox(height: 52),
            KanjiChar(word: widget.kanjiList[3].kanji),
          ],
        ),
        Column(children: [KanjiChar(word: widget.kanjiList[4].kanji)]),
      ];
    }
    if (kanjiList.length == 4) {
      return [
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
          ],
        ),
      ];
    }

    bool isInSize(List<KanjiInfo> list, int size) {
      return list.length > size;
    }

    return [
      Column(
        children: [
          KanjiChar(word: widget.kanjiList[0].kanji),
          isInSize(widget.kanjiList, 1)
              ? KanjiChar(word: widget.kanjiList[1].kanji)
              : SizedBox.shrink(),
        ],
      ),
      isInSize(widget.kanjiList, 2)
          ? Column(
            children: [
              KanjiChar(word: widget.kanjiList[2].kanji),
              isInSize(widget.kanjiList, 3)
                  ? KanjiChar(word: widget.kanjiList[3].kanji)
                  : SizedBox.shrink(),
            ],
          )
          : SizedBox.shrink(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
          [
            [widget.isOdd ? SizedBox(width: 120) : SizedBox.shrink()],
            _buildChars(widget.kanjiList),
          ].expand((x) => x).toList(),
    );
  }
}
