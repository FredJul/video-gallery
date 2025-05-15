import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class VideoThumbnail extends StatelessWidget {
  final String thumbnailUrl;

  const VideoThumbnail({super.key, required this.thumbnailUrl});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: thumbnailUrl,
      fit: BoxFit.cover,
      placeholder:
          (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget:
          (context, url, error) => Container(
            color: Colors.grey[300],
            child: const Center(
              child: Icon(Icons.broken_image, color: Colors.grey, size: 40),
            ),
          ),
    );
  }
}
