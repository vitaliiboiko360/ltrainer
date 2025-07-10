import 'package:flutter/material.dart';
import 'package:ltrainer/src/stories/story/get_text.dart';

class TextLine extends StatelessWidget {
  const TextLine({
    super.key,
    required this.japanese,
    this.hiraganaInfoList = const <HiraganaInfo>[],
  });

  final String japanese;
  final HiraganaInfoList hiraganaInfoList;

  buildTextLine() {
    var japaneseChars = Characters(japanese);
    var columns = <Widget>[];
    for (var i = 0; i < japaneseChars.length; i++) {
      final index = hiraganaInfoList.indexWhere((elm) => elm.place == i);
      columns.add(
        Padding(
          padding: EdgeInsetsGeometry.directional(top: 15, bottom: 5),
          child: Column(
            children: [
              Text(
                index != -1 ? hiraganaInfoList[i].hiragana : ' ',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                japaneseChars.characterAt(i).toString(),
                style: TextStyle(fontSize: 32),
              ),
            ],
          ),
        ),
      );
    }
    return columns;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buildTextLine(),
    );
  }
}
