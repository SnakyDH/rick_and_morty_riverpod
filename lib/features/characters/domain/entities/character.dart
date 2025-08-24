import 'package:rick_and_morty_riverpod/features/characters/domain/enums/character_gender.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/enums/character_status.dart';

class Character {
  final int id;
  final String imageUrl;
  final String name;
  final CharacterStatus? status;
  final String? species;
  final String? originName;
  final CharacterGender? gender;
  final String? locationName;
  final int? quantityEpisodes;

  Character({
    required this.id,
    required this.imageUrl,
    required this.name,
    this.status,
    this.species,
    this.originName,
    this.gender,
    this.locationName,
    this.quantityEpisodes,
  });
}
