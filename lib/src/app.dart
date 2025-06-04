import 'package:flutter/material.dart';
import 'package:ltrainer/src/home.dart';
import 'package:ltrainer/src/theme.dart';
import 'package:ltrainer/src/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nihongo App',
      theme: themeData,
      home: const HomePage(),
      routes: routes,
    );
  }
}
