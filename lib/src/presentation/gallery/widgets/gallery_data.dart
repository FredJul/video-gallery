import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:videogallery/src/domain/entities/video.dart';
import 'package:videogallery/src/presentation/gallery/viewmodels/gallery_view_model.dart';
import 'package:videogallery/src/presentation/gallery/widgets/video_grid_item.dart';

class GalleryData extends ConsumerStatefulWidget {
  final List<Video> _videos;

  const GalleryData({super.key, required List<Video> videos})
    : _videos = videos;

  @override
  ConsumerState<GalleryData> createState() => _GalleryDataState();
}

class _GalleryDataState extends ConsumerState<GalleryData> {
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();

    _controller.addListener(() {
      if (_controller.hasClients) {
        // Fetch videos when user scrolls to 80% of the available content
        const double scrollThreshold = 0.8;
        final double maxScroll = _controller.position.maxScrollExtent;
        final double currentScroll = _controller.offset;

        if (currentScroll >= (maxScroll * scrollThreshold)) {
          ref.read(galleryViewModelProvider.notifier).fetchVideos();
        }
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: _controller,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 16 / 9,
      ),
      itemCount: widget._videos.length,
      itemBuilder: (context, index) {
        final Video video = widget._videos[index];
        return VideoGridItem(video: video);
      },
    );
  }
}
