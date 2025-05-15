// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Video Gallery';

  @override
  String get retryButton => 'Retry';

  @override
  String get serverError => 'Could not fetch videos. Please try again';

  @override
  String get networkError => 'No internet or server unreachable';

  @override
  String get unexpectedError => 'An unexpected error occurred';

  @override
  String get switchToGridView => 'Switch to grid view';

  @override
  String get switchToListView => 'Switch to list view';

  @override
  String get searchHint => 'Search for videos...';

  @override
  String get closeSearch => 'Close search';

  @override
  String get searchVideos => 'Search videos';

  @override
  String get noVideosFound => 'No videos found';

  @override
  String get noVideosFoundDescription => 'Try searching with different keywords.';
}
