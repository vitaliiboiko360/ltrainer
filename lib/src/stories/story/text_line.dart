import 'package:flutter/material.dart';
import 'package:ltrainer/src/stories/story/get_text.dart';

void defaultCallback() {}

class TextLine extends StatelessWidget {
  TextLine({
    super.key,
    required this.japanese,
    this.hiraganaInfoList = const <HiraganaInfo>[],
    this.callback = defaultCallback,
  });

  final String japanese;
  final HiraganaInfoList hiraganaInfoList;
  VoidCallback callback;

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
                index != -1 ? hiraganaInfoList[index].hiragana : ' ',
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
    return GestureDetector(
      onTap: () {
        callback();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: buildTextLine(),
      ),
    );
  }
}
