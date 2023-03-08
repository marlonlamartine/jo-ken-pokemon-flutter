import 'package:flutter/material.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/colors_app.dart';

class ButtonStyles {
  static ButtonStyles? _instance;
  // Avoid self isntance
  ButtonStyles._();
  static ButtonStyles get instance {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.instance.lightBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      );

  ButtonStyle get secondaryButton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.instance.lightYellow,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      );
}

extension ButtonStylesExtension on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.instance;
}
