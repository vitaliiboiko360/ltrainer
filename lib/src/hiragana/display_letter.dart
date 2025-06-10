import 'package:flutter/material.dart';
import 'package:ltrainer/src/hiragana/left_buttons.dart';
import 'package:ltrainer/src/hiragana/video_player.dart';

const noShow = -1;

class DisplayLetter extends StatefulWidget {
  DisplayLetter({
    super.key,
    required this.characterToShow,
    required this.videoFilename,
  });

  late int characterToShow;
  late String videoFilename;

  @override
  State<DisplayLetter> createState() => _DisplayLetterState();
}

class _DisplayLetterState extends State<DisplayLetter> {
  int characterToShow = noShow;
  String videoFilename = '';

  @override
  void initState() {
    super.initState();
    videoFilename = widget.videoFilename;
  }

  _getDisplay(videoFilename) {
    if (widget.characterToShow != noShow) {
      return SizedBox(
        height: 250,
        width: 250,
        child: VideoPlayerScreen(videoFilename: videoFilename),
      );
    }
    return Image(height: 250, width: 250, image: AssetImage('bg.png'));
  }

  @override
  void didUpdateWidget(DisplayLetter oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.videoFilename != oldWidget.videoFilename) {
      print('STTTTTTATE');
      setState(() {
        videoFilename = widget.videoFilename;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(left: 75, top: 175, child: _getDisplay(videoFilename)),
      ],
    );
  }
}
