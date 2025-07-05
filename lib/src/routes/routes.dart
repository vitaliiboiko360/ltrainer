import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/page.dart';
import 'package:ltrainer/src/kanji/page.dart';
import 'package:ltrainer/src/katakana/page.dart';
import 'package:ltrainer/src/stories/page.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/hiragana': (BuildContext context) {
    return HiraganaPage();
  },
  '/katakana': (BuildContext context) {
    return KatakanaPage();
  },
  '/kanji': (BuildContext context) {
    return KanjiPage();
  },
  '/stories-0': (BuildContext context) {
    return StoriesPage();
  },
  '/stories-1': (BuildContext context) {
    return StoriesPage();
  },
};
