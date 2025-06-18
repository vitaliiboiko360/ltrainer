import 'package:flutter/material.dart';

class TopHeader extends StatefulWidget {
  const TopHeader({super.key});

  @override
  State<TopHeader> createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 58),
      child: Row(
        spacing: 54.0,

        children: <Widget>[
          LetterHeader(text: 'a'),
          LetterHeader(text: 'i'),
          LetterHeader(text: 'u'),
          LetterHeader(text: 'e'),
          LetterHeader(text: 'o'),
        ],
      ),
    );
  }
}

class LetterHeader extends StatelessWidget {
  const LetterHeader({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      child: Align(
        alignment: Alignment.center,
        child: Text(text, style: TextStyle(fontFamily: 'Nunito', fontSize: 30)),
      ),
    );
  }
}
