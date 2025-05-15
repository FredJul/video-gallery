// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PixabayVideoList _$PixabayVideoListFromJson(Map<String, dynamic> json) =>
    _PixabayVideoList(
      totalCount: (json['totalHits'] as num).toInt(),
      videos:
          (json['hits'] as List<dynamic>)
              .map((e) => PixabayVideo.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$PixabayVideoListToJson(_PixabayVideoList instance) =>
    <String, dynamic>{
      'totalHits': instance.totalCount,
      'hits': instance.videos,
    };

_PixabayVideo _$PixabayVideoFromJson(Map<String, dynamic> json) =>
    _PixabayVideo(
      id: (json['id'] as num).toInt(),
      user: json['user'] as String,
      userImageUrl: json['userImageURL'] as String,
      videoLinks: VideoLinks.fromJson(json['videos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PixabayVideoToJson(_PixabayVideo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'userImageURL': instance.userImageUrl,
      'videos': instance.videoLinks,
    };

_VideoLinks _$VideoLinksFromJson(Map<String, dynamic> json) => _VideoLinks(
  tiny: VideoLink.fromJson(json['tiny'] as Map<String, dynamic>),
  medium: VideoLink.fromJson(json['medium'] as Map<String, dynamic>),
  small: VideoLink.fromJson(json['small'] as Map<String, dynamic>),
  large: VideoLink.fromJson(json['large'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VideoLinksToJson(_VideoLinks instance) =>
    <String, dynamic>{
      'tiny': instance.tiny,
      'medium': instance.medium,
      'small': instance.small,
      'large': instance.large,
    };

_VideoLink _$VideoLinkFromJson(Map<String, dynamic> json) => _VideoLink(
  thumbnailUrl: json['thumbnail'] as String,
  videoUrl: json['url'] as String,
);

Map<String, dynamic> _$VideoLinkToJson(_VideoLink instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnailUrl,
      'url': instance.videoUrl,
    };
