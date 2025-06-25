import 'package:flutter/material.dart';

class KanjiChar extends StatefulWidget {
  const KanjiChar({super.key, required this.word});

  final String word;

  @override
  State<KanjiChar> createState() => _KanjiCharState();
}

class _KanjiCharState extends State<KanjiChar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: Container(
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
          child: Padding(
            padding: EdgeInsets.all(6),
            child: Text(widget.word, style: TextStyle(fontSize: 40)),
          ),
        ),
      ),
    );
  }
}
