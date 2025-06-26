import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';

const int httpOk = 200;
const int httpNotChanged = 304;

bool isReponseOk(http.Response response) {
  return response.statusCode == httpOk || response.statusCode == httpNotChanged;
}

Future<List<KanjiInfo>> getKanji(http.Client client) async {
  final response = await http.get(
    Uri.parse('http://192.168.0.106:8080/kanji.json'),
  );
  if (isReponseOk(response)) {
    return compute(parseKanji, response.body);
  } else {
    throw Exception('Failed to load KanjiInfo');
  }
}

List<KanjiInfo> parseKanji(String responseBody) {
  final parsed =
      (jsonDecode(responseBody) as List).cast<Map<String, dynamic>>();

  return parsed
      .mapIndexed<KanjiInfo>(
        (index, json) => KanjiInfo.fromJsonObj(index, json),
      )
      .toList();
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

  factory KanjiInfo.fromJsonObj(int orderId, Map<String, dynamic> jsonObj) {
    return KanjiInfo(
      orderId: orderId,
      kanji: jsonObj['kanji'] as String,
      sound: jsonObj['sound'] as String,
      kunyomi: jsonObj['kunyomi'] as String,
      translation: jsonObj['translation'] as String,
      level: jsonObj['level'] as String,
    );
  }
}
