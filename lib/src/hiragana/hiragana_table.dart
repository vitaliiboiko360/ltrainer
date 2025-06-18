import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/hiragana_table/sound_block.dart';
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
            SoundBlock(
              sound: '  ',
              hiraganaArray: ['あ', 'a', 'い', 'i', 'う', 'u', 'え', 'e', 'お', 'o'],
              hiraganaArraySecond: ['や', 'ya', 'ゆ', 'yu', 'よ', 'yo'],
            ),
            Divider(endIndent: 40),
            SoundBlock(
              sound: 'k',
              hiraganaArray: [
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
              ],
              hiraganaArraySecond: ['きゃ', 'kya', 'きゅ', 'kyu', 'きょ', 'kyo'],
            ),
            SoundBlock(
              sound: 'g',
              hiraganaArray: [
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
              ],
              hiraganaArraySecond: ['ぎゃ', 'gya', 'ぎゅ', 'gyu', 'ぎょ', 'gyo'],
            ),
            Divider(endIndent: 40),
            SoundBlock(
              sound: 's',
              hiraganaArray: [
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
              ],
            ),
            Divider(endIndent: 40),
            SoundBlock(
              sound: 'z',
              hiraganaArray: [
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
              ],
            ),
            Divider(endIndent: 40),
            SoundBlock(
              sound: 't',
              hiraganaArray: [
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
