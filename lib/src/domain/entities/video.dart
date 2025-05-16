import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';

/// Represents a video entity with its metadata.
@freezed
abstract class Video with _$Video {
  const factory Video({
    /// Unique identifier for the video
    required int id,

    /// Direct URL to the video file
    required String videoUrl,

    /// URL to the video thumbnail image
    required String thumbnailUrl,

    /// Username of the video creator
    required String user,

    /// URL to the profile image of the video creator
    required String userImageUrl,
  }) = _Video;
}
