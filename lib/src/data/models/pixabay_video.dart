import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixabay_video.freezed.dart';
part 'pixabay_video.g.dart';

@freezed
abstract class PixabayVideoList with _$PixabayVideoList {
  const factory PixabayVideoList({
    @JsonKey(name: 'totalHits') required int totalCount,
    @JsonKey(name: 'hits') required List<PixabayVideo> videos,
  }) = _PixabayVideoList;

  factory PixabayVideoList.fromJson(Map<String, dynamic> json) =>
      _$PixabayVideoListFromJson(json);
}

@freezed
abstract class PixabayVideo with _$PixabayVideo {
  const factory PixabayVideo({
    required int id,
    required String user,
    @JsonKey(name: 'userImageURL') required String userImageUrl,
    @JsonKey(name: 'videos') required VideoLinks videoLinks,
  }) = _PixabayVideo;

  factory PixabayVideo.fromJson(Map<String, dynamic> json) =>
      _$PixabayVideoFromJson(json);
}

@freezed
abstract class VideoLinks with _$VideoLinks {
  const factory VideoLinks({
    required VideoLink tiny,
    required VideoLink medium,
    required VideoLink small,
    required VideoLink large,
  }) = _VideoLinks;

  factory VideoLinks.fromJson(Map<String, dynamic> json) =>
      _$VideoLinksFromJson(json);
}

@freezed
abstract class VideoLink with _$VideoLink {
  const factory VideoLink({
    @JsonKey(name: 'thumbnail') required String thumbnailUrl,
    @JsonKey(name: 'url') required String videoUrl,
  }) = _VideoLink;

  factory VideoLink.fromJson(Map<String, dynamic> json) =>
      _$VideoLinkFromJson(json);
}
