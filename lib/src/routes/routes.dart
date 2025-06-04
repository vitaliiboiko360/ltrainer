import 'package:flutter/material.dart';
import 'package:ltrainer/src/home.dart';
import 'package:ltrainer/src/hiragana/page.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/hiragana': (BuildContext context) {
    return HiraganaPage();
  },
};
