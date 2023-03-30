import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/button_styles.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/colors_app.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/text_styles.dart';
import 'package:jo_ken_pokemon/app/core/ui/widgets/button.dart';
import 'package:jo_ken_pokemon/app/core/ui/widgets/tile.dart';
import 'package:jo_ken_pokemon/app/core/ui/widgets/tile_result.dart';
import 'package:jo_ken_pokemon/app/services/user_prefs.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool isSelectedBulbasaur = false;
  bool isSelectedCharmander = false;
  bool isSelectedSquirtle = false;
  String path = '';
  String pathIa = '';
  bool shouldClean = false;
  int result = 0;
  final _user = UserPrefs();

  void clean() {
    result = 0;
    path = '';
    pathIa = '';
    shouldClean = false;
  }

  void selected(String text) {
    if (text == 'bulbasaur') {
      isSelectedBulbasaur = true;
      isSelectedCharmander = false;
      isSelectedSquirtle = false;
    } else if (text == 'charmander') {
      isSelectedBulbasaur = false;
      isSelectedCharmander = true;
      isSelectedSquirtle = false;
    } else {
      isSelectedBulbasaur = false;
      isSelectedCharmander = false;
      isSelectedSquirtle = true;
    }
    path = text;
    setState(() {});
  }

  void iaChoosed() {
    List<String> opcoes = ['bulbasaur', 'charmander', 'squirtle'];
    var posicao = Random().nextInt(3);
    var escolhaDaIa = opcoes[posicao];

    pathIa = escolhaDaIa;
  }

  String whoWon() {
    _user.setTotalMatches();
    if (path == 'bulbasaur' && pathIa == 'squirtle') {
      result = 1;
      //_user.setBulbasaurWin();
      _user.playerData.setTotalBulbasaurWins();
      return 'O gigante Bulbassauro foi superior ao Squirtle. Você venceu!';
    } else if (path == 'charmander' && pathIa == 'bulbasaur') {
      result = 1;
      return 'O poderoso Charmander incendiou o pobre Bulbassauro. Você venceu!';
    } else if (path == 'squirtle' && pathIa == 'charmander') {
      result = 1;
      return 'Squirtle usou jato dágua e apagou o fogo do Charmander. Você venceu!';
    } else if (path == 'bulbasaur' && pathIa == 'charmander') {
      result = 2;
      return 'Seu Bulbassauro não foi páreo para o Charmander selvagem. Você perdeu!';
    } else if (path == 'charmander' && pathIa == 'squirtle') {
      result = 2;
      return 'Charmander foi molhado pelo Squirtle. Você perdeu!';
    } else if (path == 'squirtle' && pathIa == 'bulbasaur') {
      result = 2;
      return 'Squirtle foi imobilizado pelas vinhas do Bulbassauro. Você perdeu!';
    } else {
      result = 3;
      return 'Partida deu empate!';
    }
  }

  void resultMessage(String message, int result) {
    if (result == 1) {
      showTopSnackBar(
          Overlay.of(context)!, CustomSnackBar.success(message: message));
    } else if (result == 2) {
      showTopSnackBar(
          Overlay.of(context)!, CustomSnackBar.error(message: message));
    } else {
      showTopSnackBar(
          Overlay.of(context)!, CustomSnackBar.info(message: message));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colorsApp.shadowBlue,
        elevation: 0,
      ),
      backgroundColor: context.colorsApp.shadowBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TileResult(
            imagePath: pathIa.isNotEmpty
                ? 'assets/images/$pathIa.png'
                : 'assets/images/pokeball.png',
          ),
          TileResult(
            imagePath: path.isNotEmpty
                ? 'assets/images/$path.png'
                : 'assets/images/pokeball.png',
          ),
          Button(
            onPressed: path.isNotEmpty
                ? () async {
                    if (!shouldClean) {
                      shouldClean = true;
                      iaChoosed();
                      resultMessage(whoWon(), result);
                      //int teste = await _user.getBulbasaurWin();
                      //print('quantas o bulba venceu => $teste');
                      setState(() {});
                    } else {
                      clean();
                      setState(() {});
                    }
                  }
                : null,
            label: shouldClean ? 'Outra partida' : 'Pokebola vai',
            style: context.buttonStyles.secondaryButton,
            labelStyle: context.textStyles.textSolidBlue,
            outline: false,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tile(
                isSelected: isSelectedBulbasaur,
                onTap: !shouldClean
                    ? () {
                        selected('bulbasaur');
                      }
                    : null,
                imagePath: 'assets/images/bulbasaur.png',
              ),
              Tile(
                isSelected: isSelectedCharmander,
                onTap: !shouldClean
                    ? () {
                        selected('charmander');
                      }
                    : null,
                imagePath: 'assets/images/charmander.png',
              ),
              Tile(
                isSelected: isSelectedSquirtle,
                onTap: !shouldClean
                    ? () {
                        selected('squirtle');
                      }
                    : null,
                imagePath: 'assets/images/squirtle.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
