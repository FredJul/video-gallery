import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:videogallery/src/data/providers/datasource_providers.dart';
import 'package:videogallery/src/data/repositories/video_repository_impl.dart';
import 'package:videogallery/src/domain/repositories/video_repository.dart';

// This file contains the providers for the repositories used in the app.
// In theory, the domain layer should not depend on the data layer, this file
// is here for convenience.

final videoRepositoryProvider = Provider<VideoRepository>((ref) {
  final pixabayRemoteDataSource = ref.watch(pixabayRemoteDataSourceProvider);

  return VideoRepositoryImpl(
    pixabayApiKey: const String.fromEnvironment("PIXABAY_API_KEY"),
    pixabayRemoteDataSource: pixabayRemoteDataSource,
  );
});
