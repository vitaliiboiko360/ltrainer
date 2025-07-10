import 'package:flutter/material.dart';
import 'package:ltrainer/src/stories/story/display_lines_images.dart';
import 'package:ltrainer/src/stories/story/get_text.dart';
import 'package:http/http.dart' as http;

class DisplayText extends StatefulWidget {
  const DisplayText({super.key, required this.dirUrl});

  final String dirUrl;

  @override
  State<DisplayText> createState() => _DisplayTextState();
}

class _DisplayTextState extends State<DisplayText> {
  late Future<List<LineInfo>> lineInfoList;

  @override
  void initState() {
    super.initState();
    var client = http.Client();
    lineInfoList = getText(client, widget.dirUrl);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<LineInfo>>(
      future: lineInfoList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return DisplayLinesImages(
            content: snapshot.data!,
            dirUrl: widget.dirUrl,
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
