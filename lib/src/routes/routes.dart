import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/page.dart';
import 'package:ltrainer/src/katakana/page.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/hiragana': (BuildContext context) {
    return HiraganaPage();
  },
  '/katakana': (BuildContext context) {
    return KatakanaPage();
  },
};
