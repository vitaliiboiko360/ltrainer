import 'package:flutter/material.dart';
import 'package:ltrainer/src/kanji/get_kanji.dart';

class KanjiWordContainer extends StatefulWidget {
  const KanjiWordContainer({super.key, required this.kanjiInfo});

  final KanjiInfo kanjiInfo;

  @override
  State<KanjiWordContainer> createState() => _KanjiWordContainerState();
}

class _KanjiWordContainerState extends State<KanjiWordContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        Text(
          widget.kanjiInfo.sound,
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        Text(
          widget.kanjiInfo.kunyomi,
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        Text(
          widget.kanjiInfo.kanji,
          style: TextStyle(fontSize: 42, color: Colors.black),
        ),
        Text(
          widget.kanjiInfo.translation,
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ],
    );
  }
}
