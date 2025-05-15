import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:videogallery/src/presentation/app.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}
