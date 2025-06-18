import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/hiragana_table/table_line.dart';

class SoundBlock extends StatefulWidget {
  const SoundBlock({
    super.key,
    this.sound = '',
    required this.hiraganaArray,
    this.hiraganaArraySecond = const <String>[],
  });
  final String sound;
  final List<String> hiraganaArray;
  final List<String> hiraganaArraySecond;
  @override
  State<SoundBlock> createState() => _SoundBlockState();
}

class _SoundBlockState extends State<SoundBlock> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: <Widget>[
        SizedBox(
          width: 15,
          child: Column(
            children: [Text(widget.sound, style: TextStyle(fontSize: 30))],
          ),
        ),
        Column(
          spacing: 4,
          children: [
            TableLine(charArray: widget.hiraganaArray),
            TableLineSecond(charArray: widget.hiraganaArraySecond),
          ],
        ),
      ],
    );
  }
}
