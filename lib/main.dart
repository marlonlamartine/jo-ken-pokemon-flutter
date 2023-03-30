import 'package:flutter/material.dart';
import 'package:jo_ken_pokemon/app/jo_ken_pokemon.dart';
import 'package:jo_ken_pokemon/app/services/user_prefs.dart';
import 'package:provider/provider.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserPrefs(),
      child: const JoKenPokemon(),
    ),
  );
}
