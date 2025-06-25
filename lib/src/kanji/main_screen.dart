import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:ltrainer/src/kanji/get_kanji.dart';
import 'package:ltrainer/src/kanji/kanji_display.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late Future<List<KanjiInfo>> kanji;

  @override
  void initState() {
    super.initState();
    var client = http.Client();
    kanji = getKanji(client);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<KanjiInfo>>(
      future: kanji,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return KanjiDisplay(kanji: snapshot.data!);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
