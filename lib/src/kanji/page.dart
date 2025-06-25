import 'package:flutter/material.dart';
import 'package:ltrainer/src/back_home.dart';
import 'package:ltrainer/src/kanji/main_screen.dart';

class KanjiPage extends StatefulWidget {
  const KanjiPage({super.key});

  @override
  State<KanjiPage> createState() => _KanjiPageState();
}

class _KanjiPageState extends State<KanjiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Transform(
                  transform: Matrix4.translationValues(-160.0, 20.0, 0.0),
                  child: BackHome(),
                ),
                Text('Kanji Drill', style: TextStyle(fontSize: 30)),
                MainScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
