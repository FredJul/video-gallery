import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:videogallery/src/domain/entities/video.dart';
import 'package:videogallery/src/presentation/common/l10n/l10n.dart';
import 'package:videogallery/src/presentation/gallery/viewmodels/gallery_state.dart';
import 'package:videogallery/src/presentation/gallery/viewmodels/gallery_view_model.dart';
import 'package:videogallery/src/presentation/gallery/widgets/video_grid_item.dart';
import 'package:videogallery/src/presentation/gallery/widgets/video_list_item.dart';

class GalleryData extends ConsumerStatefulWidget {
  final List<Video> _videos;
  final ViewType viewType;

  const GalleryData({
    super.key,
    required List<Video> videos,
    required this.viewType,
  }) : _videos = videos;

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
        const scrollThreshold = 0.8;
        final maxScroll = _controller.position.maxScrollExtent;
        final currentScroll = _controller.offset;

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
    // Show empty state if there are no videos
    if (widget._videos.isEmpty) {
      return _buildEmptyView();
    }

    // Otherwise show grid or list view
    return widget.viewType == ViewType.grid
        ? _buildGridView()
        : _buildListView();
  }

  Widget _buildEmptyView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // No results icon
            const Icon(Icons.search_off, size: 80, color: Colors.grey),
            const Gap(16.0),
            // No results title
            Text(
              context.l10n.noVideosFound,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const Gap(8.0),
            // No results description
            Text(
              context.l10n.noVideosFoundDescription,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      controller: _controller,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 16 / 9,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      padding: const EdgeInsets.all(8),
      itemCount: widget._videos.length,
      itemBuilder: (context, index) {
        final video = widget._videos[index];
        return VideoGridItem(video: video);
      },
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      controller: _controller,
      itemCount: widget._videos.length,
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (context, index) {
        final video = widget._videos[index];
        return VideoListItem(video: video);
      },
    );
  }
}
