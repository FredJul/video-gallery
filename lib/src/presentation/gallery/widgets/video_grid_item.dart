import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:videogallery/src/domain/entities/video.dart';
import 'package:videogallery/src/presentation/gallery/widgets/user_profile_image.dart';
import 'package:videogallery/src/presentation/gallery/widgets/username_display.dart';
import 'package:videogallery/src/presentation/gallery/widgets/video_thumbnail.dart';

class VideoGridItem extends StatelessWidget {
  final Video _video;

  const VideoGridItem({super.key, required Video video}) : _video = video;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Thumbnail image
            VideoThumbnail(thumbnailUrl: _video.thumbnailUrl),

            // User info at bottom left
            Positioned(
              left: 8.0,
              bottom: 8.0,
              child: Row(
                children: [
                  UserProfileImage(imageUrl: _video.userImageUrl),
                  const Gap(8.0),
                  UsernameDisplay(username: _video.user),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        // TODO: Implement video player screen
      },
    );
  }
}
