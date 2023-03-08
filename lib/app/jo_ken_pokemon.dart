import 'package:flutter/material.dart';
import 'package:jo_ken_pokemon/app/pages/game/game_page.dart';
import 'package:jo_ken_pokemon/app/pages/home/home_page.dart';
import 'package:jo_ken_pokemon/app/pages/splash/splash_page.dart';

class JoKenPokemon extends StatelessWidget {
  const JoKenPokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JoKenPokemon',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/game': (context) => const GamePage(),
      },
    );
  }
}
