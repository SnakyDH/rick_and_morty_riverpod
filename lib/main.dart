import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_riverpod/core/env/environment_constants.dart';
import 'package:rick_and_morty_riverpod/core/l10n/app_localizations.dart';
import 'package:rick_and_morty_riverpod/core/routing/router.dart';
import 'package:rick_and_morty_riverpod/core/theme/rm_theme.dart';
import 'package:rick_and_morty_riverpod/features/translations/presentation/providers/locale_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Environment.initEnvironment();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final locale = ref.watch(localeNotifierProvider);
        return MaterialApp.router(
          localizationsDelegates: S.localizationsDelegates,
          supportedLocales: S.supportedLocales,
          routerConfig: appRouting,
          theme: rmTheme,
          locale: locale,
        );
      },
    );
  }
}
