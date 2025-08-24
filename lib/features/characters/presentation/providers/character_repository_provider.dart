import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/repository/character_repository.dart';
import 'package:rick_and_morty_riverpod/features/characters/infrastructure/repository/character_repository_impl.dart';
import 'package:rick_and_morty_riverpod/features/characters/presentation/providers/character_data_source_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_repository_provider.g.dart';

@riverpod
CharacterRepository characterRepository(Ref ref) {
  return CharacterRepositoryImpl(ref.watch(characterDataSourceProvider));
}
