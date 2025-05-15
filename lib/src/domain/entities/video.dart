import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';

@freezed
abstract class Video with _$Video {
  const factory Video({
    required int id,
    required String videoUrl,
    required String thumbnailUrl,
    required String user,
    required String userImageUrl,
  }) = _Video;
}
