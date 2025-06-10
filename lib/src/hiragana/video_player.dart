import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:pointer_interceptor_web/pointer_interceptor_web.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key, required this.videoFilename});

  final String videoFilename;

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  String videoFilename = '';

  bool isFirstTimePlay = true;

  @override
  void initState() {
    super.initState();
    videoFilename = widget.videoFilename;
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.networkUrl(
      Uri.parse('http://127.0.0.1:8080/${widget.videoFilename}'),
    );

    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  void didUpdateWidget(VideoPlayerScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.videoFilename != oldWidget.videoFilename) {
      setState(() {
        videoFilename = widget.videoFilename;
        isFirstTimePlay = true;
        _controller.pause();
        _controller = VideoPlayerController.networkUrl(
          Uri.parse('http://127.0.0.1:8080/${widget.videoFilename}'),
        );
        _initializeVideoPlayerFuture = _controller.initialize();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Complete the code in the next step.
    return Material(
      child: InkWell(
        mouseCursor: MouseCursor.defer,
        onTap: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        child: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (isFirstTimePlay) {
                _controller.play();
                isFirstTimePlay = false;
              }
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: IgnorePointer(child: VideoPlayer(_controller)),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
