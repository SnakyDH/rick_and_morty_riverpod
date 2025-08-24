import 'package:rick_and_morty_riverpod/core/api/paginated.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/entities/character.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/enums/character_status.dart';
import 'package:rick_and_morty_riverpod/features/characters/infrastructure/dtos/get_characters_list_response_dto.dart';

class CharactersListApiMapper {
  CharactersListApiMapper._();

  static Paginated<Character> fromDto(GetCharactersListResponseDto dto) {
    return Paginated(
      count: dto.info.count,
      pages: dto.info.pages,
      next: dto.info.next,
      prev: dto.info.prev,
      results: dto.results
          .map(
            (e) => Character(
              id: e.id,
              imageUrl: e.image,
              name: e.name,
              status: _getStatus(e.status),
            ),
          )
          .toList(),
    );
  }

  static CharacterStatus _getStatus(String status) {
    return CharacterStatus.values.firstWhere(
      (e) => e.name.toLowerCase() == status.toLowerCase(),
      orElse: () => CharacterStatus.unknown,
    );
  }
}
