import 'dart:ui';

import 'package:rick_and_morty_riverpod/core/theme/rm_colors.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/enums/character_status.dart';

extension CharacterStatusColor on CharacterStatus {
  Color get color {
    switch (this) {
      case CharacterStatus.alive:
        return RmColors.success;
      case CharacterStatus.dead:
        return RmColors.error;
      case CharacterStatus.unknown:
        return RmColors.warning;
    }
  }
}
