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

Future<List<LineInfo>> getText(http.Client client, String dirUrl) async {
  final response = await http.get(Uri.parse('/$dirUrl/text.json'));
  if (isReponseOk(response)) {
    return compute(parseKanji, response.body);
  } else {
    throw Exception('Failed to load LineInfo');
  }
}

List<LineInfo> parseKanji(String responseBody) {
  final parsed =
      (jsonDecode(responseBody) as List).cast<Map<String, dynamic>>();

  return parsed
      .mapIndexed<LineInfo>((index, json) => LineInfo.fromJsonObj(index, json))
      .toList();
}

typedef HiraganaInfoList = List<HiraganaInfo>;

class LineInfo {
  final int index;
  final int subIndex;
  final String japanese;
  HiraganaInfoList hiraganaInfoList;
  final String imageName;

  LineInfo({
    this.index = 0,
    this.subIndex = 0,
    required this.japanese,
    this.hiraganaInfoList = const <HiraganaInfo>[],
    this.imageName = '',
  });

  factory LineInfo.fromJsonObj(int orderId, Map<String, dynamic> jsonObj) {
    return LineInfo(
      index: jsonObj['index'] as int,
      subIndex: jsonObj['subIndex'] as int,
      japanese: jsonObj['jp'] as String,
      hiraganaInfoList: jsonObj['hg'] as HiraganaInfoList,
      imageName: jsonObj['image'] as String,
    );
  }
}

class HiraganaInfo {
  final int place;
  final String hiragana;
  HiraganaInfo(this.place, this.hiragana);
}
