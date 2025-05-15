import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:videogallery/src/domain/entities/video.dart';
import 'package:videogallery/src/presentation/common/failures/failures.dart';

part 'gallery_state.freezed.dart';

enum GalleryStatus { loading, success, failure }

@freezed
abstract class GalleryState with _$GalleryState {
  const factory GalleryState({
    @Default(GalleryStatus.loading) GalleryStatus status,
    @Default(<Video>[]) List<Video> videos,
    Failure? error,
  }) = _GalleryState;
}
