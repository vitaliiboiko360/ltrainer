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
            DividerBetweenSimilar(),
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
            DividerBetweenSimilar(),
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
            DividerBetweenSimilar(),
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
            DividerBetweenSimilar(),
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
            DividerBetweenSimilar(),
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
                        HiraganaLetter(letter: 'わ', sound: 'wa'),
                        HiraganaLetter(letter: 'を', sound: 'wo'),
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
                          child: HiraganaLetter(letter: 'ん', sound: 'n/m'),
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
