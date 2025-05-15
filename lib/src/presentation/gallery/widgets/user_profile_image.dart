import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const UserProfileImage({super.key, required this.imageUrl, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: Container(
        width: size,
        height: size,
        color: Colors.white,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => const SizedBox(),
          errorWidget:
              (context, url, error) => Icon(Icons.person, size: size * 0.67),
        ),
      ),
    );
  }
}
