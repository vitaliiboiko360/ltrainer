import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/hiragana_table/hiragana_letter.dart';
import 'package:ltrainer/src/hiragana/hiragana_table/sound_block.dart';
import 'package:ltrainer/src/hiragana/hiragana_table/top_header.dart';

class DividerBetweenSimilar extends StatelessWidget {
  const DividerBetweenSimilar({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(height: 50, indent: 30, endIndent: 40);
  }
}

class KatakanaTable extends StatefulWidget {
  const KatakanaTable({super.key});

  @override
  State<KatakanaTable> createState() => _KatakanaTableState();
}

class _KatakanaTableState extends State<KatakanaTable> {
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
              hiraganaArray: ['ア', 'a', 'イ', 'i', 'ウ', 'u', 'エ', 'e', 'オ', 'o'],
              hiraganaArraySecond: ['ヤ', 'ya', 'ユ', 'yu', 'ヨ', 'yo'],
            ),
            DividerBetweenSimilar(),
            SoundBlock(
              sound: 'k',
              hiraganaArray: [
                'カ',
                'ka',
                'キ',
                'ki',
                'ク',
                'ku',
                'ケ',
                'ke',
                'コ',
                'ko',
              ],
              hiraganaArraySecond: ['キャ', 'kya', 'キュ', 'kyu', 'キョ', 'kyo'],
            ),
            Divider(indent: 35, endIndent: 45, thickness: 0.4),
            SoundBlock(
              sound: 'g',
              hiraganaArray: [
                'ガ',
                'ga',
                'ギ',
                'gi',
                'グ',
                'gu',
                'ゲ',
                'ge',
                'ゴ',
                'go',
              ],
              hiraganaArraySecond: ['ギャ', 'gya', 'ギュ', 'gyu', 'ギョ', 'gyo'],
            ),
            DividerBetweenSimilar(),
            SoundBlock(
              sound: 's',
              hiraganaArray: [
                'サ',
                'sa',
                'シ',
                'shi',
                'ス',
                'su',
                'セ',
                'se',
                'ソ',
                'so',
              ],
              hiraganaArraySecond: ['シャ', 'sha', 'シュ', 'shu', 'ショ', 'sho'],
            ),
            Divider(indent: 35, endIndent: 45, thickness: 0.4),
            SoundBlock(
              sound: 'z',
              hiraganaArray: [
                'ザ',
                'za',
                'ジ',
                'ji',
                'ズ',
                'zu',
                'ゼ',
                'ze',
                'ゾ',
                'zo',
              ],
              hiraganaArraySecond: ['ジャ', 'ja', 'ジュ', 'ju', 'ジョ', 'jo'],
            ),
            DividerBetweenSimilar(),
            SoundBlock(
              sound: 't',
              hiraganaArray: [
                'タ',
                'ta',
                'チ',
                'chi',
                'ツ',
                'tsu',
                'テ',
                'te',
                'ト',
                'to',
              ],
              hiraganaArraySecond: ['チャ', 'cha', 'チュ', 'chu', 'チョ', 'cho'],
            ),
            Divider(indent: 35, endIndent: 45, thickness: 0.4),
            SoundBlock(
              sound: 'd',
              hiraganaArray: [
                'ダ',
                'da',
                'ヂ',
                'ji',
                'ヅ',
                'zu',
                'デ',
                'de',
                'ド',
                'do',
              ],
              hiraganaArraySecond: [],
            ),
            DividerBetweenSimilar(),
            SoundBlock(
              sound: 'n',
              hiraganaArray: [
                'ナ',
                'na',
                'ニ',
                'ni',
                'ヌ',
                'nu',
                'ネ',
                'ne',
                'ノ',
                'no',
              ],
              hiraganaArraySecond: ['ニャ', 'nya', 'ニュ', 'nyu', 'ニョ', 'nyo'],
            ),
            DividerBetweenSimilar(),
            SoundBlock(
              sound: 'h',
              hiraganaArray: [
                'ハ',
                'ha',
                'ヒ',
                'hi',
                'フ',
                'fu',
                'ヘ',
                'he',
                'ホ',
                'ho',
              ],
              hiraganaArraySecond: ['ヒャ', 'hya', 'ヒュ', 'hyu', 'ヒョ', 'hyo'],
            ),
            Divider(indent: 35, endIndent: 45, thickness: 0.4),
            SoundBlock(
              sound: 'b',
              hiraganaArray: [
                'バ',
                'ba',
                'ビ',
                'bi',
                'ブ',
                'bu',
                'ベ',
                'be',
                'ボ',
                'bo',
              ],
              hiraganaArraySecond: ['ビャ', 'bya', 'ビュ', 'byu', 'ビョ', 'byo'],
            ),
            Divider(indent: 35, endIndent: 45, thickness: 0.4),
            SoundBlock(
              sound: 'p',
              hiraganaArray: [
                'パ',
                'pa',
                'ピ',
                'pi',
                'プ',
                'pu',
                'ペ',
                'pe',
                'ポ',
                'po',
              ],
              hiraganaArraySecond: ['ピャ', 'pya', 'ピュ', 'pyu', 'ピョ', 'pyo'],
            ),
            DividerBetweenSimilar(),
            SoundBlock(
              sound: 'm',
              hiraganaArray: [
                'マ',
                'ma',
                'ミ',
                'mi',
                'ム',
                'mu',
                'メ',
                'me',
                'モ',
                'mo',
              ],
              hiraganaArraySecond: ['ミャ', 'mya', 'ミュ', 'ミョ', 'みょ', 'myo'],
            ),
            DividerBetweenSimilar(),
            SoundBlock(
              sound: 'r',
              hiraganaArray: [
                'ラ',
                'ra',
                'リ',
                'ri',
                'ル',
                'ru',
                'レ',
                're',
                'ロ',
                'ro',
              ],
              hiraganaArraySecond: ['リャ', 'rya', 'リュ', 'ryu', 'リョ', 'ryo'],
            ),
            DividerBetweenSimilar(),
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
                        HiraganaLetter(letter: 'ワ', sound: 'wa'),
                        HiraganaLetter(letter: 'ヲ', sound: 'wo'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            DividerBetweenSimilar(),
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 128),
                          child: HiraganaLetter(letter: 'ン', sound: 'n/m'),
                        ),
                      ],
                    ),
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
