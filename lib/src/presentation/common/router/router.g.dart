// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$galleryRoute];

RouteBase get $galleryRoute =>
    GoRouteData.$route(path: '/', factory: $GalleryRouteExtension._fromState);

extension $GalleryRouteExtension on GalleryRoute {
  static GalleryRoute _fromState(GoRouterState state) => GalleryRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
