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
  final TextEditingController _searchController = TextEditingController();
  bool _showSearchBar = false;

  @override
  void initState() {
    super.initState();
    _fetchVideos();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final galleryState = ref.watch(galleryViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title:
            _showSearchBar ? _buildSearchField() : Text(context.l10n.appTitle),
        actions: [
          // Search icon
          IconButton(
            icon: Icon(_showSearchBar ? Icons.close : Icons.search),
            tooltip:
                _showSearchBar
                    ? context.l10n.closeSearch
                    : context.l10n.searchVideos,
            onPressed: () {
              setState(() {
                _showSearchBar = !_showSearchBar;
                if (!_showSearchBar) {
                  // Clear search when closing
                  _searchController.clear();
                  ref
                      .read(galleryViewModelProvider.notifier)
                      .updateSearchQuery('');
                }
              });
            },
          ),
          // Grid/List toggle
          IconButton(
            icon: Icon(
              galleryState.viewType == ViewType.grid
                  ? Icons.list
                  : Icons.grid_view,
            ),
            tooltip:
                galleryState.viewType == ViewType.grid
                    ? context.l10n.switchToListView
                    : context.l10n.switchToGridView,
            onPressed: () {
              ref.read(galleryViewModelProvider.notifier).toggleViewType();
            },
          ),
        ],
      ),
      body: switch (galleryState.status) {
        GalleryStatus.loading => const GalleryLoading(),
        GalleryStatus.failure => GalleryError(
          error: galleryState.error!.toLocalizedMessage(context),
        ),
        GalleryStatus.success => GalleryData(
          videos: galleryState.videos,
          viewType: galleryState.viewType,
        ),
      },
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: context.l10n.searchHint,
        border: InputBorder.none,
      ),
      style: const TextStyle(color: Colors.white),
      autofocus: true,
      textInputAction: TextInputAction.search,
      onChanged: (query) {
        ref.read(galleryViewModelProvider.notifier).updateSearchQuery(query);
      },
      onSubmitted: (query) {
        // When user presses enter/search button
        ref
            .read(galleryViewModelProvider.notifier)
            .fetchVideos(query: query, emptyCurrentGallery: true);
      },
    );
  }

  void _fetchVideos() {
    ref.read(galleryViewModelProvider.notifier).fetchVideos();
  }
}
