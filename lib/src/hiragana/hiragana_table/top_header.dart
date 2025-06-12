import 'package:flutter/material.dart';

class TopHeader extends StatefulWidget {
  const TopHeader({super.key});

  @override
  State<TopHeader> createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 50.0,

      children: <Widget>[
        LetterHeader(text: 'a'),
        LetterHeader(text: 'i'),
        LetterHeader(text: 'u'),
        LetterHeader(text: 'e'),
        LetterHeader(text: 'o'),
      ],
    );
  }
}

class LetterHeader extends StatelessWidget {
  const LetterHeader({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontFamily: 'Nunito', fontSize: 30));
  }
}
