import 'package:flutter/material.dart';
import 'package:ltrainer/src/back_home.dart';
import 'package:ltrainer/src/stories/story/display_text.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key, required this.urlDir});

  final String urlDir;

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(-160.0, 20.0, 0.0),
                child: BackPrevButton(),
              ),
              SizedBox(width: 400, height: 50),
              DisplayText(dirUrl: widget.urlDir),
              SizedBox(width: 400, height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
