import 'package:flutter/material.dart';

class HiraganaLetter extends StatefulWidget {
  const HiraganaLetter({super.key, required this.letter, this.sound = ''});

  final String letter;
  final String sound;

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
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            offset: Offset(2, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 0,
        children: [
          Text(
            widget.sound,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14, height: 0.6),
          ),
          Text(
            widget.letter,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
