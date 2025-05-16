import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:videogallery/src/data/repositories/video_repository_impl.dart';
import 'package:videogallery/src/di/datasource_providers.dart';
import 'package:videogallery/src/domain/repositories/video_repository.dart';

// Repository providers
//
// This file contains providers for all repositories used in the application.

final videoRepositoryProvider = Provider<VideoRepository>((ref) {
  final pixabayRemoteDataSource = ref.watch(pixabayRemoteDataSourceProvider);

  return VideoRepositoryImpl(
    pixabayApiKey: const String.fromEnvironment("PIXABAY_API_KEY"),
    pixabayRemoteDataSource: pixabayRemoteDataSource,
  );
});
