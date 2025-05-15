import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:videogallery/src/presentation/common/l10n/l10n.dart';
import 'package:videogallery/src/presentation/gallery/viewmodels/gallery_view_model.dart';

class GalleryError extends ConsumerWidget {
  final String _error;

  const GalleryError({super.key, required String error}) : _error = error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_error, textAlign: TextAlign.center),
          const Gap(16.0),
          FilledButton.icon(
            onPressed: () {
              ref.read(galleryViewModelProvider.notifier).fetchVideos();
            },
            label: Text(context.l10n.retryButton),
          ),
        ],
      ),
    );
  }
}
