import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ltrainer/src/stories/story/audio_player.dart';
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
  late Audio audio;
  late Duration end;
  late Stream<Duration> stream;
  late StreamSubscription<Duration> listener;

  @override
  void initState() {
    super.initState();
    audio = Audio(widget.dirUrl);
    end = Duration.zero;
    stream = audio.positionDataStream;
    listener = stream.listen((data) {
      if (data >= Duration.zero) {
        audio.pause();
      }
    });
  }

  buildContent(LineInfoList content) {
    List<Widget> output = [];
    for (var i = 0; i < content.length; i++) {
      var lineInfo = content[i];
      output.add(
        TextLine(
          japanese: lineInfo.japanese,
          hiraganaInfoList: lineInfo.hiraganaInfoList,
          callback: () {
            setState(() {
              end = Duration(milliseconds: (lineInfo.end * 1000).toInt());
              audio.playFrom(
                Duration(milliseconds: (lineInfo.start * 1000).toInt()),
              );
              listener.cancel();
              listener = stream.listen((data) {
                if (data >=
                    Duration(milliseconds: (lineInfo.end * 1000).toInt())) {
                  audio.pause();
                }
              });
            });
          },
        ),
      );
      if (lineInfo.imageName != '') {
        output.add(
          Image(
            // width: sizeX - 90,
            // height: sizeY - 90,
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
            image: NetworkImage('/${widget.dirUrl}/${lineInfo.imageName}'),
          ),
        );
      }
    }

    return output;
  }

  @override
  void dispose() {
    audio.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: buildContent(widget.content),
    );
  }
}
