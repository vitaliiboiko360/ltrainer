import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Home Route')));
  },
  '/about': (BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('About Route')));
  },
};
