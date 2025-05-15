import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:videogallery/src/domain/providers/repository_providers.dart';
import 'package:videogallery/src/domain/usecases/fetch_videos_use_case.dart';

final fetchVideosUseCaseProvider = Provider<FetchVideosUseCase>((ref) {
  final videoRepository = ref.watch(videoRepositoryProvider);
  return FetchVideosUseCase(videoRepository: videoRepository);
});
