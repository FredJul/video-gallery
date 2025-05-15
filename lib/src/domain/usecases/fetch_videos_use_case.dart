import 'package:async/async.dart';
import 'package:videogallery/src/domain/common/exceptions.dart';
import 'package:videogallery/src/domain/entities/video.dart';
import 'package:videogallery/src/domain/repositories/video_repository.dart';

class FetchVideosUseCase {
  final VideoRepository _videoRepository;

  FetchVideosUseCase({required VideoRepository videoRepository})
    : _videoRepository = videoRepository;

  /// Fetch videos.
  /// [query] optional, but if provided, it will be used to filter the videos.
  /// [page] is the page number to fetch (starting from 1).
  /// [pageSize] is the number of videos to fetch in one go.
  /// Can returns an error which could be a [NetworkException],
  /// a [ServerException] or an [UnexpectedException].
  Future<Result<List<Video>>> call({
    String? query,
    int page = 1,
    int pageSize = 20,
  }) {
    // TODO: here this UseCase has no value at all, it just calls the repository.
    // In a real-world scenario, you might want to add some business logic here, like adding
    // a retry mechanism, caching, etc.

    return _videoRepository.fetchVideos(
      query: query,
      page: page,
      pageSize: pageSize,
    );
  }
}
