import 'package:flutter/material.dart';
import 'package:ltrainer/src/back_home.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              transform: Matrix4.translationValues(-160.0, 20.0, 0.0),
              child: BackPrevButton(),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(widget.urlDir, style: TextStyle(fontSize: 28)),
            ),
            SizedBox(width: 400, height: 50),
          ],
        ),
      ),
    );
  }
}
