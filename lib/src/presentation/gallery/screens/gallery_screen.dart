import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:videogallery/src/presentation/common/failures/failures.dart';
import 'package:videogallery/src/presentation/common/l10n/l10n.dart';
import 'package:videogallery/src/presentation/gallery/viewmodels/gallery_state.dart';
import 'package:videogallery/src/presentation/gallery/viewmodels/gallery_view_model.dart';
import 'package:videogallery/src/presentation/gallery/widgets/gallery_data.dart';
import 'package:videogallery/src/presentation/gallery/widgets/gallery_error.dart';
import 'package:videogallery/src/presentation/gallery/widgets/gallery_loading.dart';

class GalleryScreen extends ConsumerStatefulWidget {
  const GalleryScreen({super.key});

  @override
  ConsumerState<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends ConsumerState<GalleryScreen> {
  @override
  void initState() {
    super.initState();

    _fetchVideos();
  }

  @override
  Widget build(BuildContext context) {
    final galleryState = ref.watch(galleryViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.appTitle)),
      body: switch (galleryState.status) {
        GalleryStatus.loading => const GalleryLoading(),
        GalleryStatus.failure => GalleryError(
          error: galleryState.error!.toLocalizedMessage(context),
        ),
        GalleryStatus.success => GalleryData(videos: galleryState.videos),
      },
    );
  }

  void _fetchVideos() {
    ref.read(galleryViewModelProvider.notifier).fetchVideos();
  }
}
