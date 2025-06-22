import 'package:flutter/material.dart';
import 'package:ltrainer/src/kanji/word_container.dart';

class KanjiPage extends StatefulWidget {
  const KanjiPage({super.key});

  @override
  State<KanjiPage> createState() => _KanjiPageState();
}

class _KanjiPageState extends State<KanjiPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('Kanji List'),
        WordContainer(word: '日'),
        WordContainer(word: '一'),
        WordContainer(word: '国'),
        WordContainer(word: '会'),
        WordContainer(word: '人'),
      ],
    );
  }
}
