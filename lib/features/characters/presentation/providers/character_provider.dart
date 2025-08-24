import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/entities/character.dart';
import 'package:rick_and_morty_riverpod/features/characters/presentation/providers/character_repository_provider.dart';

part 'character_provider.g.dart';

@riverpod
Future<Character> character(Ref ref, {required int id}) async {
  final repository = ref.watch(characterRepositoryProvider);
  return repository.getCharacterById(id);
}
