import 'package:flutter/material.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/button_styles.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/colors_app.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/text_styles.dart';
import 'package:jo_ken_pokemon/app/core/ui/widgets/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
