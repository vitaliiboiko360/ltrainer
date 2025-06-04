import 'package:flutter/material.dart';

class HiraganaPage extends StatefulWidget {
  const HiraganaPage({super.key});

  final String title = 'Hiragana Page';

  @override
  State<HiraganaPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HiraganaPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  double _calcTop(int k) {
    return 100 + (k * 30);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.grey.shade100,
              width: 400,
              height: 400,
              child: Stack(
                children: <Widget>[
                  // TextButton(
                  //   onPressed: () {},
                  //   style: TextButton.styleFrom(fixedSize: Size(10, 10)),
                  //   child: const Text('a'),
                  // ),
                  Positioned(
                    left: 100.0,
                    top: _calcTop(0),
                    child: TextButton(
                      onPressed: () {},
                      // style: TextButton.styleFrom(fixedSize: Size(10, 10)),
                      child: const Text('a'),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: _calcTop(1),
                    child: TextButton(onPressed: () {}, child: const Text('i')),
                  ),
                  Positioned(
                    left: 85,
                    top: _calcTop(2),
                    child: TextButton(onPressed: () {}, child: const Text('u')),
                  ),
                  Positioned(
                    left: 80,
                    top: _calcTop(3),
                    child: TextButton(onPressed: () {}, child: const Text('e')),
                  ),
                  Positioned(
                    left: 75,
                    top: _calcTop(4),
                    child: TextButton(onPressed: () {}, child: const Text('o')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
