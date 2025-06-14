import 'package:flutter/material.dart';
import 'package:ltrainer/src/line.dart';
import 'package:ltrainer/src/tile_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  final String title = 'why Flutter Demo Home Page local';

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _goToHiragana() {
    Navigator.pushNamed(context, '/hiragana');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TileButton(onPressed: _goToHiragana, name: 'Hiragana'),
            TileButton(onPressed: _incrementCounter, name: 'Katakana'),
            Line(),
            const Text(
              'You have clicked the button this many times:',
              style: TextStyle(fontFamily: 'Nunito', fontSize: 22),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
