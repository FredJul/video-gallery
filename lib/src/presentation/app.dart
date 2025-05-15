import 'package:flutter/material.dart';
import 'package:videogallery/src/presentation/common/l10n/arb/app_localizations.dart';
import 'package:videogallery/src/presentation/common/router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(brightness: Brightness.dark),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: appRouter,
    );
  }
}
