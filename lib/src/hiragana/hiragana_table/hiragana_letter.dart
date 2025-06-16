import 'package:flutter/material.dart';

class HiraganaLetter extends StatefulWidget {
  const HiraganaLetter({super.key, required this.letter});

  final String letter;

  @override
  State<HiraganaLetter> createState() => _HiraganaLetterState();
}

class _HiraganaLetterState extends State<HiraganaLetter> {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[Text(widget.letter)]);
  }
}
