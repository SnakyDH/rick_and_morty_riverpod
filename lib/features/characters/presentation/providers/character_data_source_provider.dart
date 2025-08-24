import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/data_source/character_data_source.dart';
import 'package:rick_and_morty_riverpod/features/characters/infrastructure/data_source/character_api_data_source_impl.dart';
import 'package:rick_and_morty_riverpod/features/characters/presentation/providers/api_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_data_source_provider.g.dart';

@riverpod
CharacterDataSource characterDataSource(Ref ref) {
  return CharacterApiDataSourceImpl(ref.read(apiServiceProvider));
}
