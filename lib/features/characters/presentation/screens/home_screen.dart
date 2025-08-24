import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_riverpod/core/components/header/rm_app_bar.dart';
import 'package:rick_and_morty_riverpod/core/l10n/app_localizations.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/enums/character_status.dart';
import 'package:rick_and_morty_riverpod/features/characters/presentation/providers/characters_provider.dart';
import 'package:rick_and_morty_riverpod/features/characters/presentation/screens/character_screen.dart';
import 'package:rick_and_morty_riverpod/features/characters/presentation/widgets/home_card.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      ref.read(charactersProvider.notifier).loadMore();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    final charactersAsync = ref.watch(charactersProvider);
    final s = S.of(context)!;
    return Scaffold(
      appBar: RmAppBar(title: s.allCharacters),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: RefreshIndicator(
          onRefresh: () => ref.read(charactersProvider.notifier).refresh(),
          child: charactersAsync.when(
            data: (characters) {
              if (characters.isEmpty) {
                return Center(child: Text(s.charactersNotFound));
              }
              return GridView.builder(
                controller: _scrollController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: characters.length,
                itemBuilder: (context, index) {
                  final character = characters[index];
                  return HomeCard(
                    onTap: () => context.pushNamed(
                      CharacterScreen.routeName,
                      pathParameters: {'id': character.id.toString()},
                    ),
                    name: character.name,
                    image: character.imageUrl,
                    status: character.status ?? CharacterStatus.unknown,
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('$error')),
          ),
        ),
      ),
      bottomNavigationBar: charactersAsync.isLoading
          ? Container(
              height: 50,
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            )
          : null,
    );
  }
}
