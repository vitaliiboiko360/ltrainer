import 'package:flutter/material.dart';
import 'package:ltrainer/src/back_home.dart';
import 'package:ltrainer/src/katakana/katakana_table.dart';

class KatakanaPage extends StatefulWidget {
  const KatakanaPage({super.key});

  final String title = 'Katakana Page';

  @override
  State<KatakanaPage> createState() => _KatakanaPageState();
}

class _KatakanaPageState extends State<KatakanaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(-160.0, 20.0, 0.0),
                child: BackHome(),
              ),
              Text('Katakana Table'),
              SizedBox(width: 400, height: 3200, child: KatakanaTable()),
            ],
          ),
        ),
      ),
    );
  }
}
