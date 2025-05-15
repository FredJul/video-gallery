import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:videogallery/src/domain/entities/video.dart';
import 'package:videogallery/src/presentation/common/router/router.dart';
import 'package:videogallery/src/presentation/gallery/widgets/user_profile_image.dart';
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
            VideoThumbnail(thumbnailUrl: _video.thumbnailUrl),

            // User info at bottom left
            Positioned(
              left: 8.0,
              bottom: 8.0,
              child: Row(
                children: [
                  UserProfileImage(imageUrl: _video.userImageUrl),
                  const Gap(8.0),
                  _buildUsernameDisplay(_video.user),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        VideoPlayerRoute(videoUrl: _video.videoUrl).push(context);
      },
    );
  }

  Widget _buildUsernameDisplay(String username) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(153), // 0.6 opacity = 153 alpha
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        username,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
