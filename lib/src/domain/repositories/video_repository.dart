import 'package:async/async.dart';
import 'package:videogallery/src/domain/entities/video.dart';

abstract class VideoRepository {
  /// Fetch videos.
  /// [query] optional, but if provided, it will be used to filter the videos.
  /// [page] is the page number to fetch (starting from 1).
  /// [pageSize] is the number of videos to fetch in one go.
  /// Can returns an error which could be a [NetworkException],
  /// a [ServerException] or an [UnexpectedException].
  Future<Result<List<Video>>> fetchVideos({
    String? query,
    required int page,
    required int pageSize,
  });
}
