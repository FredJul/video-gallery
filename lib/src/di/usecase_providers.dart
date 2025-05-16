import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:videogallery/src/di/repository_providers.dart';
import 'package:videogallery/src/domain/usecases/fetch_videos_use_case.dart';

// Use case providers
//
// This file contains providers for all use cases used in the application.

final fetchVideosUseCaseProvider = Provider<FetchVideosUseCase>((ref) {
  final videoRepository = ref.watch(videoRepositoryProvider);
  return FetchVideosUseCase(videoRepository: videoRepository);
});
