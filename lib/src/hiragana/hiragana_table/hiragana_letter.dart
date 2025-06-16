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
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(widget.letter),
    );
  }
}
