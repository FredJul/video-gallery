import 'package:flutter/material.dart';

class GalleryLoading extends StatelessWidget {
  const GalleryLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator.adaptive());
  }
}
