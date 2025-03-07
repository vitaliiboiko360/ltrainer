import 'package:flutter/material.dart';

class Line extends StatefulWidget {
  const Line({super.key});

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: $count'),
        TextButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text(
            'You have clicked the button this many times',
            style: TextStyle(fontFamily: 'Nunito', fontSize: 22),
          ),
        ),
      ],
    );
  }
}
