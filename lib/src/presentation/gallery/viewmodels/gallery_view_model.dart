import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:videogallery/src/domain/common/result_extension.dart';
import 'package:videogallery/src/domain/entities/video.dart';
import 'package:videogallery/src/domain/providers/usecase_providers.dart';
import 'package:videogallery/src/presentation/common/failures/failures.dart';
import 'package:videogallery/src/presentation/gallery/viewmodels/gallery_state.dart';

class GalleryViewModel extends AutoDisposeNotifier<GalleryState> {
  CancelableOperation<Result<List<Video>>>? _fetchGalleryOperation;
  int _page = 0;

  @override
  GalleryState build() {
    return const GalleryState();
  }

  Future<void> fetchVideos({
    String? query,
    bool emptyCurrentGallery = false,
  }) async {
    // Prevent initiating a new fetch if one is already in progress
    if (!emptyCurrentGallery && _fetchGalleryOperation != null) {
      return;
    }

    if (emptyCurrentGallery) {
      // Cancel any ongoing fetch operation
      unawaited(_fetchGalleryOperation?.cancel());
      _fetchGalleryOperation = null;

      // Restart the query to page 1
      _page = 1;

      state = state.copyWith(status: GalleryStatus.loading, videos: []);
    } else {
      // Increment the page number for pagination
      _page++;
    }

    _fetchGalleryOperation = CancelableOperation.fromFuture(
      ref.read(fetchVideosUseCaseProvider).call(query: query, page: _page),
    );
    await _fetchGalleryOperation!.value.then((videosResult) {
      videosResult.when(
        value: (videos) {
          _fetchGalleryOperation = null;
          state = state.copyWith(
            status: GalleryStatus.success,
            videos: state.videos + videos,
          );
        },
        error: (e, t) {
          _fetchGalleryOperation = null;
          state = state.copyWith(
            status: GalleryStatus.failure,
            error: e.toFailure(),
          );
        },
      );
    });
  }
}

final galleryViewModelProvider =
    NotifierProvider.autoDispose<GalleryViewModel, GalleryState>(
      GalleryViewModel.new,
    );
