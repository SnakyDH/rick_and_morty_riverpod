import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/core/l10n/app_localizations.dart';

class RmAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(S.of(context)!.allCharacters), Divider(height: 2)],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
