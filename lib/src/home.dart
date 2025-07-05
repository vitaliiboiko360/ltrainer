import 'package:flutter/material.dart';
import 'package:ltrainer/src/home/line.dart';
import 'package:ltrainer/src/home/tile_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  final String title = 'Nihongo Learner';

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
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              height: 32,
              width: 32,
              image: AssetImage('flag-japan_1f1ef-1f1f5.png'),
            ),
            Text(' '),
            Text(widget.title),
          ],
        ),
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Line(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      height: 32,
                      width: 32,
                      filterQuality: FilterQuality.high,
                      isAntiAlias: true,
                      image: AssetImage(
                        'japanese-passing-grade-button_1f234.png',
                      ),
                    ),
                    Text(' '),
                    const Text(
                      'Basics: ',
                      style: TextStyle(fontFamily: 'Nunito', fontSize: 22),
                    ),
                  ],
                ),
                Line(),
                HiraganaButton(),
                KatakanaButton(),
                Line(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      height: 32,
                      width: 32,
                      filterQuality: FilterQuality.high,
                      isAntiAlias: true,
                      image: AssetImage('books_1f4da.png'),
                    ),
                    Text(' '),
                    Text(
                      'Most Common Kanji Word Practice:',
                      style: TextStyle(fontFamily: 'Nunito', fontSize: 22),
                    ),
                  ],
                ),
                Line(),
                KanjiButton(),
                Line(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      height: 32,
                      width: 32,
                      filterQuality: FilterQuality.high,
                      isAntiAlias: true,
                      image: AssetImage('speech-balloon_1f4ac.png'),
                    ),
                    Text(' '),
                    Text(
                      'Listen Speak Stories:',
                      style: TextStyle(fontFamily: 'Nunito', fontSize: 22),
                    ),
                  ],
                ),
                Line(),
                StoriesButton(),
                SizedBox(height: 150),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
