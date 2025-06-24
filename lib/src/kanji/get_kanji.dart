import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

const int httpOk = 200;
int order = 1;

Future<List<KanjiInfo>> getKanji(http.Client client) async {
  final response = await client.get(
    Uri.parse('http://127.0.0.1:8080/kanji.json'),
  );

  if (response.statusCode == httpOk) {
    return compute(parseKanji, response.body);
  } else {
    throw Exception('Failed to load KanjiInfo');
  }
}

List<KanjiInfo> parseKanji(String responseBody) {
  final parsed =
      (jsonDecode(responseBody) as List).cast<Map<String, dynamic>>();

  return parsed.map<KanjiInfo>((json) => KanjiInfo.fromJsonObj(json)).toList();
}

class KanjiInfo {
  final int orderId;
  final String kanji;
  final String sound;
  final String kunyomi;
  final String translation;
  final String level;

  const KanjiInfo({
    required this.orderId,
    required this.kanji,
    required this.sound,
    required this.kunyomi,
    required this.translation,
    required this.level,
  });

  factory KanjiInfo.fromJsonObj(Map<String, dynamic> jsonObj) {
    return KanjiInfo(
      orderId: ++order,
      kanji: jsonObj['kanji'] as String,
      sound: jsonObj['sound'] as String,
      kunyomi: jsonObj['kunyomi'] as String,
      translation: jsonObj['translation'] as String,
      level: jsonObj['level'] as String,
    );
  }
}
