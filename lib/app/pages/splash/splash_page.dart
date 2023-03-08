import 'package:flutter/material.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/button_styles.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/colors_app.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/text_styles.dart';
import 'package:jo_ken_pokemon/app/core/ui/widgets/button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: context.colorsApp.shadowYellow,
        child: Stack(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .2),
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .9,
                  child: Image.asset(
                    'assets/images/pokemon-logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * .19,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Button(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  width: MediaQuery.of(context).size.width * .9,
                  label: 'Acessar',
                  style: context.buttonStyles.primaryButton,
                  labelStyle: context.textStyles.textSolid,
                  outline: false,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
