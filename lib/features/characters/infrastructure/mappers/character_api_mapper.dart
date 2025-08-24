import 'package:rick_and_morty_riverpod/features/characters/domain/entities/character.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/enums/character_gender.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/enums/character_status.dart';
import 'package:rick_and_morty_riverpod/features/characters/infrastructure/dtos/get_character_response_dto.dart';

class CharacterApiMapper {
  CharacterApiMapper._();

  static Character fromDto(GetCharacterResponseDto dto) {
    return Character(
      id: dto.id,
      imageUrl: dto.image,
      name: dto.name,
      gender: _getGender(dto.gender),
      status: _getStatus(dto.status),
      species: dto.species,
      quantityEpisodes: dto.episodes.length,
      locationName: dto.location.name,
      originName: dto.origin.name,
    );
  }

  static CharacterGender _getGender(String gender) {
    return gender == 'Male' ? CharacterGender.male : CharacterGender.female;
  }

  static CharacterStatus _getStatus(String status) {
    return status == 'Alive'
        ? CharacterStatus.alive
        : status == 'Dead'
        ? CharacterStatus.dead
        : CharacterStatus.unknown;
  }
}
