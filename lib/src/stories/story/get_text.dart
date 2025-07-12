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

typedef LineInfoList = List<LineInfo>;

Future<LineInfoList> getText(http.Client client, String dirUrl) async {
  final response = await http.get(Uri.parse('/$dirUrl/text.json'));
  if (isReponseOk(response)) {
    return compute(parseLineInfo, response.body);
  } else {
    throw Exception('Failed to load LineInfo');
  }
}

LineInfoList parseLineInfo(String inputJson) {
  final parsed = jsonDecode(inputJson);
  final textLineInfoList =
      (parsed['lines'] as List).cast<Map<String, dynamic>>();

  return textLineInfoList
      .map<LineInfo>((json) => LineInfo.fromJsonObj(json))
      .toList();
}

typedef HiraganaInfoList = List<HiraganaInfo>;

class LineInfo {
  final int index;
  final int subIndex;
  final String japanese;
  HiraganaInfoList hiraganaInfoList;
  final String imageName;
  final double start;
  final double end;

  LineInfo({
    this.index = 0,
    this.subIndex = 0,
    required this.japanese,
    this.hiraganaInfoList = const <HiraganaInfo>[],
    this.imageName = '',
    this.start = 0,
    this.end = 0,
  });

  factory LineInfo.fromJsonObj(Map<String, dynamic> jsonObj) {
    return LineInfo(
      index: jsonObj['index'] ?? -1,
      subIndex: jsonObj['subIndex'] ?? -1,
      japanese: jsonObj['jp'] ?? 'no japanese',
      hiraganaInfoList:
          (jsonObj['hg'] ?? Map<String, dynamic>)
              .cast<Map<String, dynamic>>()
              .map<HiraganaInfo>((jsonObj) => HiraganaInfo.fromJsonObj(jsonObj))
              .toList(),
      imageName: jsonObj['image'] ?? '',
      start: jsonObj['start'] ?? 0,
      end: jsonObj['end'] ?? 0,
    );
  }
}

class HiraganaInfo {
  final int place;
  final String hiragana;
  HiraganaInfo(this.place, this.hiragana);

  factory HiraganaInfo.fromJsonObj(Map<String, dynamic> jsonObj) {
    return HiraganaInfo(jsonObj['place'], jsonObj['content']);
  }
}
