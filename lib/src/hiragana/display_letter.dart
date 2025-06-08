import 'package:flutter/material.dart';

class DisplayLetter extends StatefulWidget {
  const DisplayLetter({super.key});

  @override
  State<DisplayLetter> createState() => _DisplayLetterState();
}

class _DisplayLetterState extends State<DisplayLetter> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 75,
          top: 175,
          child: const Image(
            height: 250,
            width: 250,
            image: AssetImage('bg.png'),
          ),
        ),
      ],
    );
  }
}
