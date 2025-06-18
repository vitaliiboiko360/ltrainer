import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/hiragana_table/hiragana_letter.dart';
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
            Divider(indent: 30, endIndent: 40),
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
            Divider(indent: 35, endIndent: 45, thickness: 0.4),
            SoundBlock(
              sound: 'g',
              hiraganaArray: [
                'が',
                'ga',
                'ぎ',
                'gi',
                'ぐ',
                'gu',
                'げ',
                'ge',
                'ご',
                'go',
              ],
              hiraganaArraySecond: ['ぎゃ', 'gya', 'ぎゅ', 'gyu', 'ぎょ', 'gyo'],
            ),
            Divider(indent: 30, endIndent: 40),
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
              hiraganaArraySecond: ['しゃ', 'sha', 'しゅ', 'shu', 'しょ', 'sho'],
            ),
            Divider(indent: 35, endIndent: 45, thickness: 0.4),
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
              hiraganaArraySecond: ['じゃ', 'ja', 'じゅ', 'ju', 'じょ', 'jo'],
            ),
            Divider(indent: 30, endIndent: 40),
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
              hiraganaArraySecond: ['ちゃ', 'cha', 'ちゅ', 'chu', 'ちょ', 'cho'],
            ),
            Divider(indent: 35, endIndent: 45, thickness: 0.4),
            SoundBlock(
              sound: 'd',
              hiraganaArray: [
                'だ',
                'da',
                'ぢ',
                'ji',
                'づ',
                'zu',
                'で',
                'de',
                'ど',
                'do',
              ],
              hiraganaArraySecond: [],
            ),
            Divider(indent: 30, endIndent: 40),
            SoundBlock(
              sound: 'n',
              hiraganaArray: [
                'な',
                'na',
                'に',
                'ni',
                'ぬ',
                'nu',
                'ね',
                'ne',
                'の',
                'no',
              ],
              hiraganaArraySecond: ['にゃ', 'nya', 'にゅ', 'nyu', 'にょ', 'nyo'],
            ),
            Divider(indent: 30, endIndent: 40),
            SoundBlock(
              sound: 'h',
              hiraganaArray: [
                'は',
                'ha',
                'ひ',
                'hi',
                'ふ',
                'fu',
                'へ',
                'he',
                'ほ',
                'ho',
              ],
              hiraganaArraySecond: ['ひゃ', 'hya', 'ひゅ', 'hyu', 'ひょ', 'hyo'],
            ),
            Divider(indent: 35, endIndent: 45, thickness: 0.4),
            SoundBlock(
              sound: 'b',
              hiraganaArray: [
                'ば',
                'ba',
                'び',
                'bi',
                'ぶ',
                'bu',
                'べ',
                'be',
                'ぼ',
                'bo',
              ],
              hiraganaArraySecond: ['びゃ', 'bya', 'びゅ', 'byu', 'びょ', 'byo'],
            ),
            Divider(indent: 35, endIndent: 45, thickness: 0.4),
            SoundBlock(
              sound: 'b',
              hiraganaArray: [
                'ば',
                'ba',
                'び',
                'bi',
                'ぶ',
                'bu',
                'べ',
                'be',
                'ぼ',
                'bo',
              ],
              hiraganaArraySecond: ['びゃ', 'bya', 'びゅ', 'byu', 'びょ', 'byo'],
            ),
            Divider(indent: 35, endIndent: 45, thickness: 0.4),
            SoundBlock(
              sound: 'p',
              hiraganaArray: [
                'ぱ',
                'pa',
                'ぴ',
                'pi',
                'ぷ',
                'pu',
                'ぺ',
                'pe',
                'ぽ',
                'po',
              ],
              hiraganaArraySecond: ['ぴゃ', 'pya', 'ぴゅ', 'pyu', 'ぴょ', 'pyo'],
            ),
            Divider(indent: 30, endIndent: 40),
            SoundBlock(
              sound: 'm',
              hiraganaArray: [
                'ま',
                'ma',
                'み',
                'mi',
                'む',
                'mu',
                'め',
                'me',
                'も',
                'mo',
              ],
              hiraganaArraySecond: ['みゃ', 'mya', 'みゅ', 'myu', 'みょ', 'myo'],
            ),
            Divider(indent: 30, endIndent: 40),
            SoundBlock(
              sound: 'r',
              hiraganaArray: [
                'ら',
                'ra',
                'り',
                'ri',
                'る',
                'ru',
                'れ',
                're',
                'ろ',
                'ro',
              ],
              hiraganaArraySecond: ['りゃ', 'rya', 'りゅ', 'ryu', 'りょ', 'ryo'],
            ),
            Divider(indent: 30, endIndent: 40),
            Row(
              spacing: 20,
              children: <Widget>[
                SizedBox(
                  width: 15,
                  child: Column(
                    children: [Text('w', style: TextStyle(fontSize: 30))],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      spacing: 192,
                      children: [
                        HiraganaLetter(letter: 'わ', sound: 'wa'),
                        HiraganaLetter(letter: 'を', sound: 'wo'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(indent: 30, endIndent: 40),
            Row(
              spacing: 20,
              children: <Widget>[
                SizedBox(
                  width: 15,
                  child: Column(
                    children: [Text('', style: TextStyle(fontSize: 30))],
                  ),
                ),
                Column(
                  children: [
                    Row(children: [HiraganaLetter(letter: 'ん', sound: 'n/m')]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
