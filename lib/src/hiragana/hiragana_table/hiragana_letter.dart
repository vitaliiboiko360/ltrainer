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
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            offset: Offset(4, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: Text(
        widget.letter,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
