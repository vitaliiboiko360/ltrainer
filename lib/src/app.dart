import 'package:flutter/material.dart';
import 'package:ltrainer/src/home.dart';
import 'package:ltrainer/src/stories/story/story_route.dart';
import 'package:ltrainer/src/theme.dart';
import 'package:ltrainer/src/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nihongo App',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const HomePage(),
      onGenerateRoute: (settings) {
        return onStoryRoute(settings);
      },
      routes: routes,
    );
  }
}
