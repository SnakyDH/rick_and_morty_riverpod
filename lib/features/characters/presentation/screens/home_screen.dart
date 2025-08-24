import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/core/components/header/rm_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: RmAppBar(),
      body: Center(child: Text('Home')),
    );
  }
}
