// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pixabay_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PixabayVideoList {

@JsonKey(name: 'totalHits') int get totalCount;@JsonKey(name: 'hits') List<PixabayVideo> get videos;
/// Create a copy of PixabayVideoList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PixabayVideoListCopyWith<PixabayVideoList> get copyWith => _$PixabayVideoListCopyWithImpl<PixabayVideoList>(this as PixabayVideoList, _$identity);

  /// Serializes this PixabayVideoList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PixabayVideoList&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&const DeepCollectionEquality().equals(other.videos, videos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,const DeepCollectionEquality().hash(videos));

@override
String toString() {
  return 'PixabayVideoList(totalCount: $totalCount, videos: $videos)';
}


}

/// @nodoc
abstract mixin class $PixabayVideoListCopyWith<$Res>  {
  factory $PixabayVideoListCopyWith(PixabayVideoList value, $Res Function(PixabayVideoList) _then) = _$PixabayVideoListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'totalHits') int totalCount,@JsonKey(name: 'hits') List<PixabayVideo> videos
});




}
/// @nodoc
class _$PixabayVideoListCopyWithImpl<$Res>
    implements $PixabayVideoListCopyWith<$Res> {
  _$PixabayVideoListCopyWithImpl(this._self, this._then);

  final PixabayVideoList _self;
  final $Res Function(PixabayVideoList) _then;

/// Create a copy of PixabayVideoList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = null,Object? videos = null,}) {
  return _then(_self.copyWith(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,videos: null == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<PixabayVideo>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PixabayVideoList implements PixabayVideoList {
  const _PixabayVideoList({@JsonKey(name: 'totalHits') required this.totalCount, @JsonKey(name: 'hits') required final  List<PixabayVideo> videos}): _videos = videos;
  factory _PixabayVideoList.fromJson(Map<String, dynamic> json) => _$PixabayVideoListFromJson(json);

@override@JsonKey(name: 'totalHits') final  int totalCount;
 final  List<PixabayVideo> _videos;
@override@JsonKey(name: 'hits') List<PixabayVideo> get videos {
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videos);
}


/// Create a copy of PixabayVideoList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PixabayVideoListCopyWith<_PixabayVideoList> get copyWith => __$PixabayVideoListCopyWithImpl<_PixabayVideoList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PixabayVideoListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PixabayVideoList&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&const DeepCollectionEquality().equals(other._videos, _videos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,const DeepCollectionEquality().hash(_videos));

@override
String toString() {
  return 'PixabayVideoList(totalCount: $totalCount, videos: $videos)';
}


}

/// @nodoc
abstract mixin class _$PixabayVideoListCopyWith<$Res> implements $PixabayVideoListCopyWith<$Res> {
  factory _$PixabayVideoListCopyWith(_PixabayVideoList value, $Res Function(_PixabayVideoList) _then) = __$PixabayVideoListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'totalHits') int totalCount,@JsonKey(name: 'hits') List<PixabayVideo> videos
});




}
/// @nodoc
class __$PixabayVideoListCopyWithImpl<$Res>
    implements _$PixabayVideoListCopyWith<$Res> {
  __$PixabayVideoListCopyWithImpl(this._self, this._then);

  final _PixabayVideoList _self;
  final $Res Function(_PixabayVideoList) _then;

/// Create a copy of PixabayVideoList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = null,Object? videos = null,}) {
  return _then(_PixabayVideoList(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,videos: null == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<PixabayVideo>,
  ));
}


}


/// @nodoc
mixin _$PixabayVideo {

 int get id; String get user;@JsonKey(name: 'userImageURL') String get userImageUrl;@JsonKey(name: 'videos') VideoLinks get videoLinks;
/// Create a copy of PixabayVideo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PixabayVideoCopyWith<PixabayVideo> get copyWith => _$PixabayVideoCopyWithImpl<PixabayVideo>(this as PixabayVideo, _$identity);

  /// Serializes this PixabayVideo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PixabayVideo&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.userImageUrl, userImageUrl) || other.userImageUrl == userImageUrl)&&(identical(other.videoLinks, videoLinks) || other.videoLinks == videoLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,userImageUrl,videoLinks);

@override
String toString() {
  return 'PixabayVideo(id: $id, user: $user, userImageUrl: $userImageUrl, videoLinks: $videoLinks)';
}


}

/// @nodoc
abstract mixin class $PixabayVideoCopyWith<$Res>  {
  factory $PixabayVideoCopyWith(PixabayVideo value, $Res Function(PixabayVideo) _then) = _$PixabayVideoCopyWithImpl;
@useResult
$Res call({
 int id, String user,@JsonKey(name: 'userImageURL') String userImageUrl,@JsonKey(name: 'videos') VideoLinks videoLinks
});


$VideoLinksCopyWith<$Res> get videoLinks;

}
/// @nodoc
class _$PixabayVideoCopyWithImpl<$Res>
    implements $PixabayVideoCopyWith<$Res> {
  _$PixabayVideoCopyWithImpl(this._self, this._then);

  final PixabayVideo _self;
  final $Res Function(PixabayVideo) _then;

/// Create a copy of PixabayVideo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = null,Object? userImageUrl = null,Object? videoLinks = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,userImageUrl: null == userImageUrl ? _self.userImageUrl : userImageUrl // ignore: cast_nullable_to_non_nullable
as String,videoLinks: null == videoLinks ? _self.videoLinks : videoLinks // ignore: cast_nullable_to_non_nullable
as VideoLinks,
  ));
}
/// Create a copy of PixabayVideo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoLinksCopyWith<$Res> get videoLinks {
  
  return $VideoLinksCopyWith<$Res>(_self.videoLinks, (value) {
    return _then(_self.copyWith(videoLinks: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PixabayVideo implements PixabayVideo {
  const _PixabayVideo({required this.id, required this.user, @JsonKey(name: 'userImageURL') required this.userImageUrl, @JsonKey(name: 'videos') required this.videoLinks});
  factory _PixabayVideo.fromJson(Map<String, dynamic> json) => _$PixabayVideoFromJson(json);

@override final  int id;
@override final  String user;
@override@JsonKey(name: 'userImageURL') final  String userImageUrl;
@override@JsonKey(name: 'videos') final  VideoLinks videoLinks;

/// Create a copy of PixabayVideo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PixabayVideoCopyWith<_PixabayVideo> get copyWith => __$PixabayVideoCopyWithImpl<_PixabayVideo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PixabayVideoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PixabayVideo&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.userImageUrl, userImageUrl) || other.userImageUrl == userImageUrl)&&(identical(other.videoLinks, videoLinks) || other.videoLinks == videoLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,userImageUrl,videoLinks);

@override
String toString() {
  return 'PixabayVideo(id: $id, user: $user, userImageUrl: $userImageUrl, videoLinks: $videoLinks)';
}


}

/// @nodoc
abstract mixin class _$PixabayVideoCopyWith<$Res> implements $PixabayVideoCopyWith<$Res> {
  factory _$PixabayVideoCopyWith(_PixabayVideo value, $Res Function(_PixabayVideo) _then) = __$PixabayVideoCopyWithImpl;
@override @useResult
$Res call({
 int id, String user,@JsonKey(name: 'userImageURL') String userImageUrl,@JsonKey(name: 'videos') VideoLinks videoLinks
});


@override $VideoLinksCopyWith<$Res> get videoLinks;

}
/// @nodoc
class __$PixabayVideoCopyWithImpl<$Res>
    implements _$PixabayVideoCopyWith<$Res> {
  __$PixabayVideoCopyWithImpl(this._self, this._then);

  final _PixabayVideo _self;
  final $Res Function(_PixabayVideo) _then;

/// Create a copy of PixabayVideo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = null,Object? userImageUrl = null,Object? videoLinks = null,}) {
  return _then(_PixabayVideo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,userImageUrl: null == userImageUrl ? _self.userImageUrl : userImageUrl // ignore: cast_nullable_to_non_nullable
as String,videoLinks: null == videoLinks ? _self.videoLinks : videoLinks // ignore: cast_nullable_to_non_nullable
as VideoLinks,
  ));
}

/// Create a copy of PixabayVideo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoLinksCopyWith<$Res> get videoLinks {
  
  return $VideoLinksCopyWith<$Res>(_self.videoLinks, (value) {
    return _then(_self.copyWith(videoLinks: value));
  });
}
}


/// @nodoc
mixin _$VideoLinks {

 VideoLink get tiny; VideoLink get medium; VideoLink get small; VideoLink get large;
/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoLinksCopyWith<VideoLinks> get copyWith => _$VideoLinksCopyWithImpl<VideoLinks>(this as VideoLinks, _$identity);

  /// Serializes this VideoLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoLinks&&(identical(other.tiny, tiny) || other.tiny == tiny)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.small, small) || other.small == small)&&(identical(other.large, large) || other.large == large));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tiny,medium,small,large);

@override
String toString() {
  return 'VideoLinks(tiny: $tiny, medium: $medium, small: $small, large: $large)';
}


}

/// @nodoc
abstract mixin class $VideoLinksCopyWith<$Res>  {
  factory $VideoLinksCopyWith(VideoLinks value, $Res Function(VideoLinks) _then) = _$VideoLinksCopyWithImpl;
@useResult
$Res call({
 VideoLink tiny, VideoLink medium, VideoLink small, VideoLink large
});


$VideoLinkCopyWith<$Res> get tiny;$VideoLinkCopyWith<$Res> get medium;$VideoLinkCopyWith<$Res> get small;$VideoLinkCopyWith<$Res> get large;

}
/// @nodoc
class _$VideoLinksCopyWithImpl<$Res>
    implements $VideoLinksCopyWith<$Res> {
  _$VideoLinksCopyWithImpl(this._self, this._then);

  final VideoLinks _self;
  final $Res Function(VideoLinks) _then;

/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tiny = null,Object? medium = null,Object? small = null,Object? large = null,}) {
  return _then(_self.copyWith(
tiny: null == tiny ? _self.tiny : tiny // ignore: cast_nullable_to_non_nullable
as VideoLink,medium: null == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as VideoLink,small: null == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as VideoLink,large: null == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as VideoLink,
  ));
}
/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoLinkCopyWith<$Res> get tiny {
  
  return $VideoLinkCopyWith<$Res>(_self.tiny, (value) {
    return _then(_self.copyWith(tiny: value));
  });
}/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoLinkCopyWith<$Res> get medium {
  
  return $VideoLinkCopyWith<$Res>(_self.medium, (value) {
    return _then(_self.copyWith(medium: value));
  });
}/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoLinkCopyWith<$Res> get small {
  
  return $VideoLinkCopyWith<$Res>(_self.small, (value) {
    return _then(_self.copyWith(small: value));
  });
}/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoLinkCopyWith<$Res> get large {
  
  return $VideoLinkCopyWith<$Res>(_self.large, (value) {
    return _then(_self.copyWith(large: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _VideoLinks implements VideoLinks {
  const _VideoLinks({required this.tiny, required this.medium, required this.small, required this.large});
  factory _VideoLinks.fromJson(Map<String, dynamic> json) => _$VideoLinksFromJson(json);

@override final  VideoLink tiny;
@override final  VideoLink medium;
@override final  VideoLink small;
@override final  VideoLink large;

/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoLinksCopyWith<_VideoLinks> get copyWith => __$VideoLinksCopyWithImpl<_VideoLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoLinks&&(identical(other.tiny, tiny) || other.tiny == tiny)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.small, small) || other.small == small)&&(identical(other.large, large) || other.large == large));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tiny,medium,small,large);

@override
String toString() {
  return 'VideoLinks(tiny: $tiny, medium: $medium, small: $small, large: $large)';
}


}

/// @nodoc
abstract mixin class _$VideoLinksCopyWith<$Res> implements $VideoLinksCopyWith<$Res> {
  factory _$VideoLinksCopyWith(_VideoLinks value, $Res Function(_VideoLinks) _then) = __$VideoLinksCopyWithImpl;
@override @useResult
$Res call({
 VideoLink tiny, VideoLink medium, VideoLink small, VideoLink large
});


@override $VideoLinkCopyWith<$Res> get tiny;@override $VideoLinkCopyWith<$Res> get medium;@override $VideoLinkCopyWith<$Res> get small;@override $VideoLinkCopyWith<$Res> get large;

}
/// @nodoc
class __$VideoLinksCopyWithImpl<$Res>
    implements _$VideoLinksCopyWith<$Res> {
  __$VideoLinksCopyWithImpl(this._self, this._then);

  final _VideoLinks _self;
  final $Res Function(_VideoLinks) _then;

/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tiny = null,Object? medium = null,Object? small = null,Object? large = null,}) {
  return _then(_VideoLinks(
tiny: null == tiny ? _self.tiny : tiny // ignore: cast_nullable_to_non_nullable
as VideoLink,medium: null == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as VideoLink,small: null == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as VideoLink,large: null == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as VideoLink,
  ));
}

/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoLinkCopyWith<$Res> get tiny {
  
  return $VideoLinkCopyWith<$Res>(_self.tiny, (value) {
    return _then(_self.copyWith(tiny: value));
  });
}/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoLinkCopyWith<$Res> get medium {
  
  return $VideoLinkCopyWith<$Res>(_self.medium, (value) {
    return _then(_self.copyWith(medium: value));
  });
}/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoLinkCopyWith<$Res> get small {
  
  return $VideoLinkCopyWith<$Res>(_self.small, (value) {
    return _then(_self.copyWith(small: value));
  });
}/// Create a copy of VideoLinks
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoLinkCopyWith<$Res> get large {
  
  return $VideoLinkCopyWith<$Res>(_self.large, (value) {
    return _then(_self.copyWith(large: value));
  });
}
}


/// @nodoc
mixin _$VideoLink {

@JsonKey(name: 'thumbnail') String get thumbnailUrl;@JsonKey(name: 'url') String get videoUrl;
/// Create a copy of VideoLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoLinkCopyWith<VideoLink> get copyWith => _$VideoLinkCopyWithImpl<VideoLink>(this as VideoLink, _$identity);

  /// Serializes this VideoLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoLink&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,thumbnailUrl,videoUrl);

@override
String toString() {
  return 'VideoLink(thumbnailUrl: $thumbnailUrl, videoUrl: $videoUrl)';
}


}

/// @nodoc
abstract mixin class $VideoLinkCopyWith<$Res>  {
  factory $VideoLinkCopyWith(VideoLink value, $Res Function(VideoLink) _then) = _$VideoLinkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'thumbnail') String thumbnailUrl,@JsonKey(name: 'url') String videoUrl
});




}
/// @nodoc
class _$VideoLinkCopyWithImpl<$Res>
    implements $VideoLinkCopyWith<$Res> {
  _$VideoLinkCopyWithImpl(this._self, this._then);

  final VideoLink _self;
  final $Res Function(VideoLink) _then;

/// Create a copy of VideoLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? thumbnailUrl = null,Object? videoUrl = null,}) {
  return _then(_self.copyWith(
thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VideoLink implements VideoLink {
  const _VideoLink({@JsonKey(name: 'thumbnail') required this.thumbnailUrl, @JsonKey(name: 'url') required this.videoUrl});
  factory _VideoLink.fromJson(Map<String, dynamic> json) => _$VideoLinkFromJson(json);

@override@JsonKey(name: 'thumbnail') final  String thumbnailUrl;
@override@JsonKey(name: 'url') final  String videoUrl;

/// Create a copy of VideoLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoLinkCopyWith<_VideoLink> get copyWith => __$VideoLinkCopyWithImpl<_VideoLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoLink&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,thumbnailUrl,videoUrl);

@override
String toString() {
  return 'VideoLink(thumbnailUrl: $thumbnailUrl, videoUrl: $videoUrl)';
}


}

/// @nodoc
abstract mixin class _$VideoLinkCopyWith<$Res> implements $VideoLinkCopyWith<$Res> {
  factory _$VideoLinkCopyWith(_VideoLink value, $Res Function(_VideoLink) _then) = __$VideoLinkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'thumbnail') String thumbnailUrl,@JsonKey(name: 'url') String videoUrl
});




}
/// @nodoc
class __$VideoLinkCopyWithImpl<$Res>
    implements _$VideoLinkCopyWith<$Res> {
  __$VideoLinkCopyWithImpl(this._self, this._then);

  final _VideoLink _self;
  final $Res Function(_VideoLink) _then;

/// Create a copy of VideoLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? thumbnailUrl = null,Object? videoUrl = null,}) {
  return _then(_VideoLink(
thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
