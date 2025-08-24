import 'package:rick_and_morty_riverpod/core/api/paginated.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/entities/character.dart';

abstract class CharacterDataSource {
  Future<Paginated<Character>> getCharacters();
  Future<Character> getCharacterById(int id);
}
