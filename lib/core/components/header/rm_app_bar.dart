import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/features/translations/presentation/widgets/language_switch.dart';

class RmAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  const RmAppBar({super.key, required this.title, this.actions, this.leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      actions: actions ?? [const LanguageSwitch()],
      title: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(title), Divider(height: 2)],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
