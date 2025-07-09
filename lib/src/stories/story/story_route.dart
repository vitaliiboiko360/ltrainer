import 'package:flutter/material.dart';
import 'package:ltrainer/src/stories/story/page.dart';

onStoryRoute(settings) {
  if (settings.name.startsWith(StoryRoute.routePrefix)) {
    final args = settings.arguments as StoryRouteArguments;
    return MaterialPageRoute(
      builder: (context) {
        return StoryPage(urlDir: args.urlDir);
      },
      settings: settings,
    );
  }
  return null;
}

class StoryRoute {
  static String routePrefix = '/stories';
}

class StoryRouteArguments {
  final String urlDir;

  StoryRouteArguments(this.urlDir);
}
