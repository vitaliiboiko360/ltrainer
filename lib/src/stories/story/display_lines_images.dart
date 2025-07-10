import 'package:flutter/material.dart';
import 'package:ltrainer/src/stories/story/get_text.dart';
import 'package:ltrainer/src/stories/story/text_line.dart';

class DisplayLinesImages extends StatefulWidget {
  const DisplayLinesImages({
    super.key,
    required this.content,
    required this.dirUrl,
  });

  final LineInfoList content;
  final String dirUrl;

  @override
  State<DisplayLinesImages> createState() => _DisplayLinesImagesState();
}

class _DisplayLinesImagesState extends State<DisplayLinesImages> {
  buildContent(LineInfoList content) {
    List<Widget> output = [];
    for (var i = 0; i < content.length; i++) {
      var lineInfo = content[i];
      output.add(
        TextLine(
          japanese: lineInfo.japanese,
          hiraganaInfoList: lineInfo.hiraganaInfoList,
        ),
      );
      if (lineInfo.imageName != '') {
        output.add(
          Image(
            // width: sizeX - 90,
            // height: sizeY - 90,
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
            image: AssetImage('/${widget.dirUrl}/${lineInfo.imageName}'),
          ),
        );
      }
    }

    return output;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[Text('')]);
  }
}
