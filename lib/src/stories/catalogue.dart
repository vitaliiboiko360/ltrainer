import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:ltrainer/src/stories/item.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  late Future<List<StoryInfo>> storyInfoList;

  @override
  void initState() {
    super.initState();
    var client = http.Client();
    storyInfoList = getStoryInfoList(client);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<StoryInfo>>(
      future: storyInfoList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Widget> listStories = [];
          List<StoryInfo> inputStories = snapshot.data!;
          for (var i = 0; i < inputStories.length; i++) {
            var item = Item(
              name: inputStories[i].name,
              dirUrl: inputStories[i].dirUrl,
              imageUrl: inputStories[i].imageUrl,
              order: inputStories[i].order,
            );
            listStories.add(item);
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: listStories,
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}

const int httpOk = 200;
const int httpNotChanged = 304;

bool isReponseOk(http.Response response) {
  return response.statusCode == httpOk || response.statusCode == httpNotChanged;
}

Future<List<StoryInfo>> getStoryInfoList(http.Client client) async {
  final response = await http.get(Uri.parse('/stories.json'));
  if (isReponseOk(response)) {
    return compute(parseStoryInfoList, response.body);
  } else {
    throw Exception('Failed to load StoryInfo list');
  }
}

List<StoryInfo> parseStoryInfoList(String responseBody) {
  final jsonInput = jsonDecode(responseBody);
  final storyList = (jsonInput['list'] as List).cast<Map<String, dynamic>>();

  return storyList.map<StoryInfo>((json) => StoryInfo.fromJson(json)).toList();
}

class StoryInfo {
  const StoryInfo({
    required this.order,
    required this.name,
    required this.dirUrl,
    required this.imageUrl,
  });

  final int order;
  final String name;
  final String imageUrl;
  final String dirUrl;

  factory StoryInfo.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'order': int order,
        'name': String name,
        'dir': String dirUrl,
        'image': String imageUrl,
      } =>
        StoryInfo(order: order, name: name, imageUrl: imageUrl, dirUrl: dirUrl),
      _ =>
        throw const FormatException('Failed to create StoryInfo out of json'),
    };
  }
}
