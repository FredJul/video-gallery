import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:videogallery/src/presentation/gallery/screens/gallery_screen.dart';

part 'router.g.dart';

@TypedGoRoute<GalleryRoute>(path: '/')
class GalleryRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      GalleryScreen(key: state.pageKey);
}

final appRouter = GoRouter(routes: $appRoutes);
