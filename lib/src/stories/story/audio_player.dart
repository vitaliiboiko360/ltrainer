import 'package:just_audio/just_audio.dart';

class Audio {
  final player = AudioPlayer();
  final String dirUrl;

  Audio(this.dirUrl) {
    _init();
  }

  Future<void> _init() async {
    try {
      await player.setAudioSource(
        AudioSource.uri(Uri.parse('/$dirUrl/audio.mp3')),
      );
      player.setLoopMode(LoopMode.one);
    } on PlayerException catch (e) {
      // print('Error loading audio source $e');
    }
  }

  Stream<Duration> get positionDataStream => player.positionStream;

  void dispose() {
    player.dispose();
  }

  void pause() {
    player.pause();
  }

  void playFrom(Duration from) {
    if (!player.playing) {
      player.seek(from);
      player.play();
    }
  }

  void playPause() {
    if (player.playing) {
      player.pause();
      player.setClip();
    } else {
      player.seek(Duration(seconds: 10));
      player.play();
    }
  }
}
