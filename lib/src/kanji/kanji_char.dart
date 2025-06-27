import 'package:flutter/material.dart';
import 'package:ltrainer/src/kanji/get_kanji.dart';
import 'package:ltrainer/src/kanji/kanji_wordcontainer.dart';

class KanjiChar extends StatefulWidget {
  KanjiChar({
    super.key,
    required this.word,
    this.kanjiInfo = const KanjiInfo(
      orderId: -1,
      kanji: '',
      sound: '',
      kunyomi: '',
      translation: '',
      level: '',
    ),
  });

  final String word;
  KanjiInfo kanjiInfo;

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
            child: TextButton(
              onPressed:
                  () => showDialog<String>(
                    context: context,
                    builder:
                        (BuildContext context) => Dialog(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(height: 25),
                                KanjiWordContainer(kanjiInfo: widget.kanjiInfo),
                                const SizedBox(height: 15),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.check),
                                ),
                              ],
                            ),
                          ),
                        ),
                  ),
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
              ),
              child: Text(
                widget.word,
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
