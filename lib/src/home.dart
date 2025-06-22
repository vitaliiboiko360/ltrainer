import 'package:flutter/material.dart';
import 'package:ltrainer/src/home/line.dart';
import 'package:ltrainer/src/home/tile_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  final String title = 'Nihongo App';

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Line(),
                const Text(
                  'Basics:',
                  style: TextStyle(fontFamily: 'Nunito', fontSize: 22),
                ),
                Line(),
                HiraganaButton(),
                KatakanaButton(),
                Line(),
                Text(
                  'Most Common Kanji Word Practice:',
                  style: TextStyle(fontFamily: 'Nunito', fontSize: 22),
                ),
                Line(),
                KanjiButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
