import 'package:rick_and_morty_riverpod/core/api/paginated.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/data_source/character_data_source.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/entities/character.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/repository/character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CharacterDataSource _characterDataSource;

  CharacterRepositoryImpl(this._characterDataSource);

  @override
  Future<Character> getCharacterById(int id) {
    return _characterDataSource.getCharacterById(id);
  }

  @override
  Future<Paginated<Character>> getCharacters({String? nextUrl}) {
    return _characterDataSource.getCharacters(nextUrl: nextUrl);
  }
}
