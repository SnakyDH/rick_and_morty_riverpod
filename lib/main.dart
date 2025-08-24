import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/core/l10n/app_localizations.dart';
import 'package:rick_and_morty_riverpod/core/routing/router.dart';
import 'package:rick_and_morty_riverpod/core/theme/rm_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: S.localizationsDelegates,
      supportedLocales: S.supportedLocales,
      routerConfig: appRouting,
      theme: rmTheme,
    );
  }
}
