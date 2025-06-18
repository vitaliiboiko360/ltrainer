import 'package:flutter/material.dart';
import 'package:ltrainer/src/back_home.dart';
import 'package:ltrainer/src/hiragana/button_group.dart';
import 'package:ltrainer/src/hiragana/draw_letter.dart';
import 'package:ltrainer/src/hiragana/hiragana_table.dart';
import 'package:scribble/scribble.dart';

class HiraganaPage extends StatefulWidget {
  const HiraganaPage({super.key});

  final String title = 'Hiragana Page';

  @override
  State<HiraganaPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HiraganaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(-160.0, 20.0, 0.0),
                child: BackHome(),
              ),
              Container(
                // color: Colors.grey.shade100,
                width: 400,
                height: 600,
                child: ButtonGroup(),
              ),
              SizedBox(
                width: 400,
                height: 350,
                child: DrawLetter(title: 'Practice Write'),
              ),
              SizedBox(width: 400, height: 2800, child: HiraganaTable()),
            ],
          ),
        ),
      ),
    );
  }
}
