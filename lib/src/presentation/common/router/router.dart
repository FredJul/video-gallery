import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:videogallery/src/presentation/gallery/screens/gallery_screen.dart';
import 'package:videogallery/src/presentation/videoplayer/screens/video_player_screen.dart';

part 'router.g.dart';

@TypedGoRoute<GalleryRoute>(path: '/')
class GalleryRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      GalleryScreen(key: state.pageKey);
}

@TypedGoRoute<VideoPlayerRoute>(path: '/video')
class VideoPlayerRoute extends GoRouteData {
  // TODO: use an video id instead of a video url and then fetch the video via cache or api
  final String videoUrl;

  VideoPlayerRoute({required this.videoUrl});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      VideoPlayerScreen(key: state.pageKey, videoUrl: videoUrl);
}

final appRouter = GoRouter(routes: $appRoutes);
