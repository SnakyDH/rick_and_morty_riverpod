import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_riverpod/features/characters/presentation/screens/home_screen.dart';

final appRouting = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
