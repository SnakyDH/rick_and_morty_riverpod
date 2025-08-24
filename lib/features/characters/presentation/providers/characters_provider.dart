import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/entities/character.dart';
import 'package:rick_and_morty_riverpod/features/characters/presentation/providers/character_repository_provider.dart';

part 'characters_provider.g.dart';

@riverpod
class Characters extends _$Characters {
  String? _nextUrl;

  @override
  FutureOr<List<Character>> build() async {
    return _fetchFirstPage();
  }

  Future<List<Character>> _fetchFirstPage() async {
    final repo = ref.read(characterRepositoryProvider);
    final paginated = await repo.getCharacters();

    _nextUrl = paginated.next;
    return paginated.results;
  }

  Future<void> refresh() async {
    state = const AsyncLoading<List<Character>>().copyWithPrevious(state);
    state = AsyncData(await _fetchFirstPage());
  }

  Future<void> loadMore() async {
    if (_nextUrl == null || state.isLoading) return;

    state = const AsyncLoading<List<Character>>().copyWithPrevious(state);

    final repo = ref.read(characterRepositoryProvider);
    final paginated = await repo.getCharacters(nextUrl: _nextUrl);

    _nextUrl = paginated.next;

    state = AsyncData([...state.valueOrNull ?? [], ...paginated.results]);
  }
}
