import 'package:rick_and_morty_riverpod/core/api/api_service.dart';
import 'package:rick_and_morty_riverpod/core/api/paginated.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/data_source/character_data_source.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/entities/character.dart';
import 'package:rick_and_morty_riverpod/features/characters/infrastructure/dtos/get_character_response_dto.dart';
import 'package:rick_and_morty_riverpod/features/characters/infrastructure/dtos/get_characters_list_response_dto.dart';
import 'package:rick_and_morty_riverpod/features/characters/infrastructure/mappers/character_api_mapper.dart';
import 'package:rick_and_morty_riverpod/features/characters/infrastructure/mappers/characters_list_api_mapper.dart';

class CharacterApiDataSourceImpl implements CharacterDataSource {
  final ApiService _apiService;

  CharacterApiDataSourceImpl(this._apiService);

  @override
  Future<Paginated<Character>> getCharacters() async {
    final response = await _apiService.get('/api/character');
    final data = GetCharactersListResponseDto.fromJson(response.data);
    return CharactersListApiMapper.fromDto(data);
  }

  @override
  Future<Character> getCharacterById(int id) async {
    final response = await _apiService.get('/api/character/$id');
    final data = GetCharacterResponseDto.fromJson(response.data);
    return CharacterApiMapper.fromDto(data);
  }
}
