import 'package:flutter/material.dart';
import 'package:ltrainer/src/back_home.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key, required this.title});

  final String title;

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            transform: Matrix4.translationValues(-160.0, 20.0, 0.0),
            child: BackPrevButton(),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: Text(widget.title, style: TextStyle(fontSize: 28)),
          ),
          SizedBox(width: 400, height: 50),
        ],
      ),
    );
  }
}
