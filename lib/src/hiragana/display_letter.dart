import 'package:flutter/material.dart';

const noShow = -1;

class DisplayLetter extends StatefulWidget {
  const DisplayLetter({super.key, required this.characterToShow});

  final int characterToShow;

  @override
  State<DisplayLetter> createState() => _DisplayLetterState();
}

class _DisplayLetterState extends State<DisplayLetter> {
  int characterToShow = noShow;

  _getDisplay() {
    if (widget.characterToShow != noShow) {}
    return Image(height: 250, width: 250, image: AssetImage('bg.png'));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[Positioned(left: 75, top: 175, child: _getDisplay())],
    );
  }
}
