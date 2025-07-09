import 'package:flutter/material.dart';
import 'package:ltrainer/src/stories/story/get_text.dart';

class DisplayLinesImages extends StatefulWidget {
  const DisplayLinesImages({super.key, required this.content});

  final LineInfoList content;

  @override
  State<DisplayLinesImages> createState() => _DisplayLinesImagesState();
}

class _DisplayLinesImagesState extends State<DisplayLinesImages> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[Text('')]);
  }
}
