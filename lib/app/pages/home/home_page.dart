import 'package:flutter/material.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/button_styles.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/colors_app.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/text_styles.dart';
import 'package:jo_ken_pokemon/app/core/ui/widgets/button.dart';
import 'package:jo_ken_pokemon/app/services/user_prefs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  int total = 0;

  @override
  void initState() {
    super.initState();
    getName();
    getTotal();
  }

  Future<void> getName() async {
    final user = UserPrefs();
    name = await user.getUserName();
    setState(() {});
  }

  Future<void> getTotal() async {
    final user = UserPrefs();
    total = await user.getTotalMatches();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorsApp.shadowYellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                'assets/images/pokemon-logo-2.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Olá $name',
              style: context.textStyles.textSolidBlue,
            ),
            const SizedBox(height: 20),
            Text(
              '$total',
              style: context.textStyles.textSolidBlue,
            ),
            const SizedBox(height: 20),
            Button(
              onPressed: () {
                Navigator.of(context).pushNamed('/game');
              },
              label: 'Novo jogo',
              style: context.buttonStyles.primaryButton,
              labelStyle: context.textStyles.textSolid,
              outline: false,
            ),
            const SizedBox(height: 15),
            Button(
              onPressed: () {
                Navigator.of(context).pushNamed('/stats');
              },
              label: 'Estatísticas',
              style: context.buttonStyles.primaryButton,
              labelStyle: context.textStyles.textSolid,
              outline: false,
            ),
          ],
        ),
      ),
    );
  }
}
