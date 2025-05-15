import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:videogallery/src/domain/entities/video.dart';
import 'package:videogallery/src/presentation/common/router/router.dart';
import 'package:videogallery/src/presentation/gallery/widgets/user_profile_image.dart';
import 'package:videogallery/src/presentation/gallery/widgets/video_thumbnail.dart';

class VideoListItem extends StatelessWidget {
  final Video _video;

  const VideoListItem({super.key, required Video video}) : _video = video;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // Thumbnail on the left
              SizedBox(
                width: 120.0,
                height: 80.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: VideoThumbnail(thumbnailUrl: _video.thumbnailUrl),
                ),
              ),
              const Gap(12.0),
              // Video info on the right
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        UserProfileImage(
                          imageUrl: _video.userImageUrl,
                          size: 20.0,
                        ),
                        const Gap(8.0),
                        Text(_video.user),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          VideoPlayerRoute(videoUrl: _video.videoUrl).push(context);
        },
      ),
    );
  }
}
