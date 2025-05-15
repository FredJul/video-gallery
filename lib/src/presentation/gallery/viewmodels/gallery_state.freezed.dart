// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GalleryState implements DiagnosticableTreeMixin {

 GalleryStatus get status; List<Video> get videos; ViewType get viewType; Failure? get error;
/// Create a copy of GalleryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GalleryStateCopyWith<GalleryState> get copyWith => _$GalleryStateCopyWithImpl<GalleryState>(this as GalleryState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GalleryState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('videos', videos))..add(DiagnosticsProperty('viewType', viewType))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.videos, videos)&&(identical(other.viewType, viewType) || other.viewType == viewType)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(videos),viewType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GalleryState(status: $status, videos: $videos, viewType: $viewType, error: $error)';
}


}

/// @nodoc
abstract mixin class $GalleryStateCopyWith<$Res>  {
  factory $GalleryStateCopyWith(GalleryState value, $Res Function(GalleryState) _then) = _$GalleryStateCopyWithImpl;
@useResult
$Res call({
 GalleryStatus status, List<Video> videos, ViewType viewType, Failure? error
});




}
/// @nodoc
class _$GalleryStateCopyWithImpl<$Res>
    implements $GalleryStateCopyWith<$Res> {
  _$GalleryStateCopyWithImpl(this._self, this._then);

  final GalleryState _self;
  final $Res Function(GalleryState) _then;

/// Create a copy of GalleryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? videos = null,Object? viewType = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GalleryStatus,videos: null == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<Video>,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as ViewType,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// @nodoc


class _GalleryState with DiagnosticableTreeMixin implements GalleryState {
  const _GalleryState({this.status = GalleryStatus.loading, final  List<Video> videos = const <Video>[], this.viewType = ViewType.grid, this.error}): _videos = videos;
  

@override@JsonKey() final  GalleryStatus status;
 final  List<Video> _videos;
@override@JsonKey() List<Video> get videos {
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videos);
}

@override@JsonKey() final  ViewType viewType;
@override final  Failure? error;

/// Create a copy of GalleryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GalleryStateCopyWith<_GalleryState> get copyWith => __$GalleryStateCopyWithImpl<_GalleryState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GalleryState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('videos', videos))..add(DiagnosticsProperty('viewType', viewType))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GalleryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._videos, _videos)&&(identical(other.viewType, viewType) || other.viewType == viewType)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_videos),viewType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GalleryState(status: $status, videos: $videos, viewType: $viewType, error: $error)';
}


}

/// @nodoc
abstract mixin class _$GalleryStateCopyWith<$Res> implements $GalleryStateCopyWith<$Res> {
  factory _$GalleryStateCopyWith(_GalleryState value, $Res Function(_GalleryState) _then) = __$GalleryStateCopyWithImpl;
@override @useResult
$Res call({
 GalleryStatus status, List<Video> videos, ViewType viewType, Failure? error
});




}
/// @nodoc
class __$GalleryStateCopyWithImpl<$Res>
    implements _$GalleryStateCopyWith<$Res> {
  __$GalleryStateCopyWithImpl(this._self, this._then);

  final _GalleryState _self;
  final $Res Function(_GalleryState) _then;

/// Create a copy of GalleryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? videos = null,Object? viewType = null,Object? error = freezed,}) {
  return _then(_GalleryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GalleryStatus,videos: null == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<Video>,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as ViewType,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
