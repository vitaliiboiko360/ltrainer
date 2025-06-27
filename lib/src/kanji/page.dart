import 'dart:ui';

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
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color.fromARGB(85, 227, 234, 255),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Transform(
                      transform: Matrix4.translationValues(-160.0, 20.0, 0.0),
                      child: BackHome(),
                    ),
                    Text('Kanji Drill', style: TextStyle(fontSize: 30)),
                    Text('(Kun\'Yomi Reading)', style: TextStyle(fontSize: 20)),
                    const SizedBox(height: 15),
                    MainScreen(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
