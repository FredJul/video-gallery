import 'package:flutter/material.dart';

class UsernameDisplay extends StatelessWidget {
  final String username;

  const UsernameDisplay({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
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
