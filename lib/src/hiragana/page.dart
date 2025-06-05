import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/button_group.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.grey.shade100,
              width: 400,
              height: 400,
              child: ButtonGroup(),
            ),
          ],
        ),
      ),
    );
  }
}
