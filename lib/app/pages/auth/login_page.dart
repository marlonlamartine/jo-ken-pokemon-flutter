import 'package:flutter/material.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/button_styles.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/colors_app.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/text_styles.dart';
import 'package:jo_ken_pokemon/app/core/ui/widgets/button.dart';
import 'package:jo_ken_pokemon/app/services/user_prefs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey();
  final nameController = TextEditingController();
  final _user = UserPrefs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorsApp.shadowYellow,
      body: Form(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .3,
            left: 10,
            right: 10,
          ),
          child: Column(
            children: [
              Text(
                'Informe o seu nome',
                style: context.textStyles.textSolidBlue,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Button(
                    onPressed: () {
                      _user.setUsername(nameController.text);
                      Navigator.of(context).pushNamed('/home');
                    },
                    label: 'Confirma',
                    style: context.buttonStyles.primaryButton,
                    labelStyle: context.textStyles.textSolid,
                    outline: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
