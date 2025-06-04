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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.grey.shade50,
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
                    top: 150.0,
                    child: TextButton(
                      onPressed: () {},
                      // style: TextButton.styleFrom(fixedSize: Size(10, 10)),
                      child: const Text('a'),
                    ),
                  ),
                  // Positioned(
                  //   left: 90,
                  //   top: 140,
                  //   child: TextButton(onPressed: () {}, child: const Text('i')),
                  // ),
                  // Positioned(
                  //   left: 85,
                  //   top: 130,
                  //   child: TextButton(onPressed: () {}, child: const Text('u')),
                  // ),
                  // Positioned(
                  //   left: 80,
                  //   top: 120,
                  //   child: TextButton(onPressed: () {}, child: const Text('e')),
                  // ),
                  // Positioned(
                  //   left: 75,
                  //   top: 110,
                  //   child: TextButton(onPressed: () {}, child: const Text('o')),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
