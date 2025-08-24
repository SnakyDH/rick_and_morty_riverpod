import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_riverpod/core/l10n/app_localizations.dart';
import 'package:rick_and_morty_riverpod/core/theme/rm_colors.dart';
import 'package:rick_and_morty_riverpod/features/translations/presentation/providers/locale_provider.dart';

class LanguageSwitch extends ConsumerWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(localeNotifierProvider).languageCode;
    final s = S.of(context)!;

    return PopupMenuButton<String>(
      offset: const Offset(0, 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      icon: const Icon(Icons.language, color: RmColors.white),
      onSelected: (String languageCode) {
        ref.read(localeNotifierProvider.notifier).changeLocale(languageCode);
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        _buildLanguageItem(
          languageCode: 'en',
          languageName: s.english,
          isSelected: currentLocale == 'en',
        ),
        _buildLanguageItem(
          languageCode: 'es',
          languageName: s.spanish,
          isSelected: currentLocale == 'es',
        ),
      ],
    );
  }

  PopupMenuItem<String> _buildLanguageItem({
    required String languageCode,
    required String languageName,
    required bool isSelected,
  }) {
    return PopupMenuItem<String>(
      value: languageCode,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(languageName),
          if (isSelected) const Icon(Icons.check, color: RmColors.secondary),
        ],
      ),
    );
  }
}
