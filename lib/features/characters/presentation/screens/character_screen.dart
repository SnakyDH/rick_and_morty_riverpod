import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_riverpod/core/components/header/rm_app_bar.dart';
import 'package:rick_and_morty_riverpod/core/l10n/app_localizations.dart';
import 'package:rick_and_morty_riverpod/core/theme/rm_colors.dart';
import 'package:rick_and_morty_riverpod/features/characters/presentation/colors/character_status_color.dart';
import 'package:rick_and_morty_riverpod/features/characters/presentation/providers/character_provider.dart';

class CharacterScreen extends ConsumerWidget {
  static const routeName = 'character_screen';
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = int.parse(GoRouterState.of(context).pathParameters['id'] ?? '0');
    final s = S.of(context)!;
    return Scaffold(
      appBar: RmAppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_ios, color: RmColors.white),
        ),
        title: s.characterDetail,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ref
            .watch(characterProvider(id: id))
            .when(
              data: (character) => SingleChildScrollView(
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: character.status!.color),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Text(
                            s.status,
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            character.status!.name,
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      character.name,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: RmColors.secondary,
                      ),
                    ),
                    Hero(
                      tag: character.imageUrl,
                      child: Container(
                        height: 350,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(character.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text(
                          s.lastLocation,
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: RmColors.secondary,
                              ),
                        ),
                        Text(
                          character.locationName ?? '',
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text(
                          s.species,
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: RmColors.secondary,
                              ),
                        ),
                        Text(
                          character.species ?? '',
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text(
                          s.gender,
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: RmColors.secondary,
                              ),
                        ),
                        Text(
                          character.gender?.name ?? '',
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text(
                          s.origin,
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: RmColors.secondary,
                              ),
                        ),
                        Text(
                          character.originName ?? '',
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('$error')),
            ),
      ),
    );
  }
}
