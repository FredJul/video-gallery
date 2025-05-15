import 'dart:async';

import 'package:async/async.dart';
import 'package:videogallery/src/data/datasources/remote/pixabay_remote_data_source.dart';
import 'package:videogallery/src/data/models/pixabay_video.dart';
import 'package:videogallery/src/domain/common/result_extension.dart';
import 'package:videogallery/src/domain/entities/video.dart';
import 'package:videogallery/src/domain/repositories/video_repository.dart';

class VideoRepositoryImpl implements VideoRepository {
  final String _pixabayApiKey;
  final PixabayRemoteDataSource _pixabayRemoteDataSource;

  VideoRepositoryImpl({
    required String pixabayApiKey,
    required PixabayRemoteDataSource pixabayRemoteDataSource,
  }) : _pixabayApiKey = pixabayApiKey,
       _pixabayRemoteDataSource = pixabayRemoteDataSource;

  @override
  Future<Result<List<Video>>> fetchVideos({
    String? query,
    required int page,
    required int pageSize,
  }) {
    // Convert the data or exceptions to a Result
    final result = Result.capture<PixabayVideoList>(
      _pixabayRemoteDataSource.fetchVideos(
        _pixabayApiKey,
        query,
        page,
        pageSize,
      ),
    );

    return result.map<List<Video>>(
      (videos) => videos.videos.map((v) => _mapToVideo(v)).toList(),
    );
  }

  /// Maps data model to domain entity
  Video _mapToVideo(PixabayVideo pixabayVideo) {
    return Video(
      id: pixabayVideo.id,
      videoUrl: pixabayVideo.videoLinks.tiny.videoUrl,
      thumbnailUrl: pixabayVideo.videoLinks.tiny.thumbnailUrl,
      user: pixabayVideo.user,
      userImageUrl: pixabayVideo.userImageUrl,
    );
  }
}
