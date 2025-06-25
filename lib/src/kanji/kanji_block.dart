import 'package:flutter/material.dart';
import 'package:ltrainer/src/kanji/get_kanji.dart';

class KanjiBlock extends StatefulWidget {
  const KanjiBlock({super.key, required this.kanjiList});

  final List<KanjiInfo> kanjiList;

  @override
  State<KanjiBlock> createState() => _KanjiBlockState();
}

class _KanjiBlockState extends State<KanjiBlock> {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[Column()]);
  }
}
