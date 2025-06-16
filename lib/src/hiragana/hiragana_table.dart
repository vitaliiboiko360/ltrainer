import 'package:flutter/material.dart';
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
            TableLine(charArray: ['あ', 'い', 'う', 'え', 'お']),
            TableLine(charArray: ['か', 'き', 'く', 'け', 'こ']),
          ],
        ),
      ),
    );
  }
}
