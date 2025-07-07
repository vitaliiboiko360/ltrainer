import 'package:flutter/material.dart';
import 'package:ltrainer/src/back_home.dart';
import 'package:ltrainer/src/stories/catalogue.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  final String title = 'Stories';

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
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
                child: BackHome(),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: Text('Stories', style: TextStyle(fontSize: 28)),
              ),
              SizedBox(width: 400, height: 50),
              Catalogue(),
            ],
          ),
        ),
      ),
    );
  }
}
