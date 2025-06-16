import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/hiragana_table/table_line.dart';
import 'package:ltrainer/src/hiragana/hiragana_table/top_header.dart';

class HiraganaTable extends StatefulWidget {
  const HiraganaTable({super.key});

  @override
  State<HiraganaTable> createState() => _HiraganaTableState();
}

class _HiraganaTableState extends State<HiraganaTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 6,
          children: <Widget>[
            TopHeader(),
            TableLine(
              hiraganaArray: makeHiraganaArray([
                'あ',
                'a',
                'い',
                'i',
                'う',
                'u',
                'え',
                'e',
                'お',
                'o',
              ]),
            ),
            TableLine(
              hiraganaArray: makeHiraganaArray([
                'か',
                'ka',
                'き',
                'ki',
                'く',
                'ku',
                'け',
                'ke',
                'こ',
                'ko',
              ]),
            ),
            TableLine(
              hiraganaArray: makeHiraganaArray([
                'が',
                'ga',
                'ぎ',
                'gi,',
                'ぐ',
                'gu',
                'げ',
                'ge',
                'ご',
                'go',
              ]),
            ),
            TableLine(
              hiraganaArray: makeHiraganaArray([
                'さ',
                'sa',
                'し',
                'shi',
                'す',
                'su',
                'せ',
                'se',
                'そ',
                'so',
              ]),
            ),
            TableLine(
              hiraganaArray: makeHiraganaArray([
                'ざ',
                'za',
                'じ',
                'ji',
                'ず',
                'zu',
                'ぜ',
                'ze',
                'ぞ',
                'zo',
              ]),
            ),
            TableLine(
              hiraganaArray: makeHiraganaArray([
                'た',
                'ta',
                'ち',
                'chi',
                'つ',
                'tsu',
                'て',
                'te',
                'と',
                'to',
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
