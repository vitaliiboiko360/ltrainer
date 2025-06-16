import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Line extends StatefulWidget {
  const Line({super.key});

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [hr]);
  }

  Widget get hr => Container(
    height: 2,
    color: const Color(0x8080DDFF),
    margin: const EdgeInsets.symmetric(vertical: 5),
  ).animate().scale(duration: 600.ms, alignment: Alignment.centerLeft);
}
