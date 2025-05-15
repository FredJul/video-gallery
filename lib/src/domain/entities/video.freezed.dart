// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Video {

 int get id; String get videoUrl; String get thumbnailUrl; String get user; String get userImageUrl;
/// Create a copy of Video
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoCopyWith<Video> get copyWith => _$VideoCopyWithImpl<Video>(this as Video, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Video&&(identical(other.id, id) || other.id == id)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.user, user) || other.user == user)&&(identical(other.userImageUrl, userImageUrl) || other.userImageUrl == userImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,videoUrl,thumbnailUrl,user,userImageUrl);

@override
String toString() {
  return 'Video(id: $id, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, user: $user, userImageUrl: $userImageUrl)';
}


}

/// @nodoc
abstract mixin class $VideoCopyWith<$Res>  {
  factory $VideoCopyWith(Video value, $Res Function(Video) _then) = _$VideoCopyWithImpl;
@useResult
$Res call({
 int id, String videoUrl, String thumbnailUrl, String user, String userImageUrl
});




}
/// @nodoc
class _$VideoCopyWithImpl<$Res>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._self, this._then);

  final Video _self;
  final $Res Function(Video) _then;

/// Create a copy of Video
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? videoUrl = null,Object? thumbnailUrl = null,Object? user = null,Object? userImageUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,userImageUrl: null == userImageUrl ? _self.userImageUrl : userImageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _Video implements Video {
  const _Video({required this.id, required this.videoUrl, required this.thumbnailUrl, required this.user, required this.userImageUrl});
  

@override final  int id;
@override final  String videoUrl;
@override final  String thumbnailUrl;
@override final  String user;
@override final  String userImageUrl;

/// Create a copy of Video
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoCopyWith<_Video> get copyWith => __$VideoCopyWithImpl<_Video>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Video&&(identical(other.id, id) || other.id == id)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.user, user) || other.user == user)&&(identical(other.userImageUrl, userImageUrl) || other.userImageUrl == userImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,videoUrl,thumbnailUrl,user,userImageUrl);

@override
String toString() {
  return 'Video(id: $id, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, user: $user, userImageUrl: $userImageUrl)';
}


}

/// @nodoc
abstract mixin class _$VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) _then) = __$VideoCopyWithImpl;
@override @useResult
$Res call({
 int id, String videoUrl, String thumbnailUrl, String user, String userImageUrl
});




}
/// @nodoc
class __$VideoCopyWithImpl<$Res>
    implements _$VideoCopyWith<$Res> {
  __$VideoCopyWithImpl(this._self, this._then);

  final _Video _self;
  final $Res Function(_Video) _then;

/// Create a copy of Video
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? videoUrl = null,Object? thumbnailUrl = null,Object? user = null,Object? userImageUrl = null,}) {
  return _then(_Video(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,userImageUrl: null == userImageUrl ? _self.userImageUrl : userImageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
