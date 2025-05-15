import 'package:flutter/material.dart';
import 'package:videogallery/src/presentation/videoplayer/widgets/video_player.dart';

class VideoPlayerScreen extends StatelessWidget {
  final String videoUrl;

  const VideoPlayerScreen({super.key, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: VideoPlayer(videoUrl: videoUrl));
  }
}
